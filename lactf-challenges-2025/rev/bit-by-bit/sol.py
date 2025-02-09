import dns.query
import dns.zone

def get_zone_transfer():
    try:
        # Attempt zone transfer
        zone = dns.zone.from_xfr(dns.query.xfr('34.169.35.135', 'rev.lac.tf'))
        # Convert zone data to string
        zone_data = []
        for name, node in zone.nodes.items():
            rdatasets = node.rdatasets
            for rdataset in rdatasets:
                zone_data.append(f"{name} {rdataset}")
        return '\n'.join(str(x) for x in zone_data)
    except Exception as e:
        return f"Zone transfer failed: {str(e)}"

zone_transfer_output = get_zone_transfer()

records = [r.split(" ") for r in zone_transfer_output.splitlines() if r.split(" ")[3] == "TXT"]

bits = [-1] * (37 * 8)

record_dict = {r[0]: r[4].strip("\" \t\n") for r in records}

print("Zone transfer finished!", len(record_dict))

curr_record = record_dict["0"]
while curr_record.split(";")[0] != "-1":
    if curr_record.split(";")[1] != "":
        print(curr_record)
        bit_idx, bit_val = map(int, curr_record.split(";")[1].split(","))
        bits[bit_idx] = bit_val
    curr_record = record_dict[curr_record.split(";")[0]]

print(bits)

flag = "".join(chr(int("".join(map(str, bits[i:i+8])), 2)) for i in range(0, len(bits), 8))

print(flag)