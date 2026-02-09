# code adapted from https://github.com/defund/garble/blob/main/free_xor.py
from pwn import *
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
def xor(b1, b2):
    if type(b1) is not bytes:
        b1 = bytes.fromhex(b1)
    if type(b2) is not bytes:
        b2 = bytes.fromhex(b2)
    return bytes(i ^ j for i,j in zip(b1,b2))

conn = remote("chall.lac.tf", 31182)
# conn.recvline()
# command = conn.recvline().decode()
# # print(command)
# p = process(command, shell=True)
# pow = p.recvline().strip()
# print(pow)
# print(conn.recvuntil(b": "))
# conn.sendline(pow)

print(conn.recvuntil(b": "))
conn.sendline(b"0")

wire1 = conn.recvline().decode().split()[-2:]
wire2 = conn.recvline().decode().split()[-2:]

table1 = conn.recvline().decode().split()[0]

table2 = conn.recvline().decode().split()[0]

table3 = conn.recvline().decode().split()[0]

table = [["00"* 16, table1], [table2, table3]] # replace with ur own table

iv = conn.recvline().decode().split()[1]
print(iv)
conn.recvuntil(b": ")

delta = xor(xor(table[0][0], table[0][1]), xor(table[1][0], table[1][1]))

in_labels = [Wire.Label(bytes.fromhex(wire1[0]), int(wire1[1])), Wire.Label(bytes.fromhex(wire2[0]), int(wire2[1]))] # replace with ur own labels

zero = Cipher(0, in_labels[0], in_labels[1], iv = bytes.fromhex(iv)).decrypt([bytes.fromhex(table[in_labels[0][1]][in_labels[1][1]]), 1]) # replace with ur own iv
one = xor(zero.key, delta)
print(one.hex())
conn.sendline(one.hex().encode())
conn.interactive()
