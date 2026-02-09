#!/usr/local/bin/python3
# code adapted from https://github.com/defund/garble/blob/main/free_xor.py

from collections import namedtuple
from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes, random
from Crypto.Util.strxor import strxor
ivs = [[0, 0], [0, 0]]

def get_truth_table(op):
	match op:
		case 'and':
			return [
				[0, 0, 0],
				[0, 1, 0],
				[1, 0, 0],
				[1, 1, 1],
			]
		case 'xor':
			return [
				[0, 0, 0],
				[0, 1, 1],
				[1, 0, 1],
				[1, 1, 0],
			]

BUF_LEN = 16

def rand_bit():
	return random.getrandbits(1)

def rand_buf():
	return get_random_bytes(BUF_LEN)

class Cipher():
	def __init__(self, idx,  *labels, iv = get_random_bytes(8)):
		ivs[labels[0].ptr][labels[1].ptr] = iv
		key1 = labels[0].key
		key2 = labels[1].key
		self.aes1 = AES.new(key1, AES.MODE_CTR, nonce = iv)
		self.aes2 = AES.new(key2, AES.MODE_CTR, nonce = iv)


	def encrypt(self, label):
		return self.aes1.encrypt(self.aes2.encrypt(label.key)), int.from_bytes(self.aes1.encrypt(self.aes2.encrypt(label.ptr.to_bytes(1, 'big')))) & 1

	def decrypt(self, row):
		return Wire.Label(self.aes1.decrypt(self.aes2.decrypt(row[0])), int.from_bytes(self.aes1.decrypt(self.aes2.decrypt(row[1].to_bytes(1, 'big')))) & 1)
	
	def decrypt_zeros(self):
		return self.decrypt((bytes(BUF_LEN), 0))
	
class Wire():
	def __init__(self, zero, one):
		self.zero = zero
		self.one = one

	@classmethod
	def new(cls):
		zero = Wire.Label(rand_buf())
		one = Wire.Label(rand_buf())
		return cls(zero, one)

	def get_label(self, value):
		match value:
			case 0:
				return self.zero
			case 1:
				return self.one
			case _:
				raise ValueError('cannot translate value to label')

	def get_value(self, label):
		match label:
			case self.zero:
				return 0
			case self.one:
				return 1
			case _:
				raise ValueError('cannot translate label to value')
	Label = namedtuple('Label', 'key ptr')

	@classmethod
	def new(cls):
		bit = rand_bit()
		zero = Wire.Label(rand_buf(), bit)
		one = Wire.Label(rand_buf(), bit ^ 1)
		return cls(zero, one)
	@classmethod
	def new_with_label(cls, label, value):
		other = Wire.Label(rand_buf(), label.ptr ^ 1)
		match value:
			case 0:
				return cls(label, other)
			case 1:
				return cls(other, label)
			case _:
				raise ValueError('value must be 0 or 1')
	@classmethod
	def new(cls, delta):
		bit = rand_bit()
		zero = Wire.Label(rand_buf(), bit)
		one = Wire.Label(strxor(zero.key, delta), bit ^ 1)
		return cls(zero, one)

	@classmethod
	def new_with_label(cls, delta, label, value):
		other = Wire.Label(strxor(label.key, delta), label.ptr ^ 1)
		match value:
			case 0:
				return cls(label, other)
			case 1:
				return cls(other, label)
			case _:
				raise ValueError('value must be 0 or 1')

def garble_gate(idx, op, wa, wb, delta):
	for va, vb, vc in get_truth_table(op):
		la = wa.get_label(va)
		lb = wb.get_label(vb)
		if la.ptr == 0 and lb.ptr == 0:
			lc = Cipher(idx, la, lb).decrypt_zeros()
			wc = Wire.new_with_label(delta, lc, vc)
			break
	table = [[None, None], [None, None]]
	for va, vb, vc in get_truth_table(op):
		la = wa.get_label(va)
		lb = wb.get_label(vb)
		lc = wc.get_label(vc)
		if not (la.ptr == 0 and lb.ptr == 0):
			table[la.ptr][lb.ptr] = Cipher(idx, la, lb).encrypt(lc)
	return wc, table

def evaluate_gate(idx, table, la, lb):
	if la.ptr == 0 and lb.ptr == 0:
		return Cipher(idx, la, lb).decrypt_zeros()
	else:
		row = table[la.ptr][lb.ptr]
		return Cipher(idx, la, lb).decrypt(row)

def garble_xor_gate(wa, wb, delta):
	la = wa.zero
	lb = wb.zero
	lc = Wire.Label(strxor(la.key, lb.key), la.ptr ^ lb.ptr)
	return Wire.new_with_label(delta, lc, 0)

def evaluate_xor_gate(la, lb):
	return Wire.Label(strxor(la.key, lb.key), la.ptr ^ lb.ptr)

def garble(circuit):
	delta = rand_buf()
	wires = []
	in_wires = []
	out_wires = []
	tables = []
	for idx, line in enumerate(circuit):
		match line:
			case ('id',):
				wire = Wire.new(delta)
				wires.append(wire)
				in_wires.append(wire)
			case ('id', a):
				wires.append(None)
				out_wires.append(wires[a])
			case ('and', a, b):
				wire, table = garble_gate(idx, 'and', wires[a], wires[b], delta)
				wires.append(wire)
				tables.append(table)
			case ('xor', a, b):
				wire = garble_xor_gate(wires[a], wires[b], delta)
				wires.append(wire)
	return in_wires, out_wires, tables

def evaluate(circuit, in_labels, out_wires, tables):
	in_labels = iter(in_labels)
	out_wires = iter(out_wires)
	tables = iter(tables)
	labels = []
	out_bits = []
	for idx, line in enumerate(circuit):
		match line:
			case ('id',):
				labels.append(next(in_labels))
			case ('id', a):
				labels.append(None)
				out_bits.append(next(out_wires).get_value(labels[a]))
			case ('and', a, b):
				labels.append(evaluate_gate(idx, next(tables), labels[a], labels[b]))
			case ('xor', a, b):
				labels.append(evaluate_xor_gate(labels[a], labels[b]))
	return out_bits

if __name__ == '__main__':

    print("Push the rock up the mountain and you will receive the flag")
    circuit = [('id',), ('id',), ('and', 0, 1), ('id', 2)]
    my_choice = 0
    your_choice = int(input("decide your fate: "))
    in_bits = (my_choice, your_choice)
    in_wires, out_wires, tables = garble(circuit)
    in_labels = [w.get_label(b) for w, b in zip(in_wires, in_bits)]
	
    for i, label in enumerate(in_labels):
        print(f'wire {i}: {label.key.hex()} {label.ptr}')
		
    for i, j in ((0, 1), (1, 0), (1, 1)):
        row = tables[0][i][j]
        print(f'{row[0].hex()} {row[1]}')

    print(f"iv: {ivs[in_labels[0].ptr][in_labels[1].ptr].hex()}")

    answer = bytes.fromhex(input("Show me the output, and I will believe the rock has made it up the mountain: "))
    if answer == out_wires[0].one.key:
        print(open("flag.txt", "r").read())