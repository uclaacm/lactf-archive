#!/usr/bin/env python3
import sys
import csv
import tqdm

if len(sys.argv) != 2:
    print("Usage: python3 preprocess.py <input_file>")
    sys.exit(1)

input_file = sys.argv[1]

with open(input_file, "r") as f:
    lines = f.readlines()
    lines = [line.strip() for line in lines]

def month_to_num(month: str) -> str:
    months = {
        "Jan": "01",
        "Feb": "02",
        "Mar": "03",
        "Apr": "04",
        "May": "05",
        "Jun": "06",
        "Jul": "07",
        "Aug": "08",
        "Sep": "09",
        "Oct": "10",
        "Nov": "11",
        "Dev": "12",
    }

    return months.get(month, "00")

def preprocess_line(line: str) -> list[str]:
    res = []
    prev = 0

    # IP address
    i = line.index(" ")
    ip = line[prev:i]
    res.append(ip)

    # Timestamp (All in UTC Which is Used by KQL)
    prev = i + 1
    i = line.index("[", prev + 1)
    prev = i + 1
    i = line.index("]", prev + 1)
    timestamp = line[prev:i].split(" ")[0]
    # Covert 07/Feb/2025:04:23:56 into 2025-02-07 04:23:56
    timestamp = timestamp.replace("/", "-")
    timestamp = timestamp.replace(":", " ", 1)

    # Convert Feb into 02
    timestamp = timestamp.split("-")
    time = timestamp[2].split(":")
    year = time[0].split(" ")[0]
    month = month_to_num(timestamp[1])
    day = f"{int(timestamp[0]) - 3:02}"

    # Swap day and year
    timestamp = f"{year}-{month}-{day} {time[0].split()[1]}:{time[1]}:{time[2]}"

    res.append(timestamp)

    # HTTP method
    prev = i + 1
    i = line.index(" ", prev + 1)
    method = line[prev + 2:i]
    res.append(method)

    # Endpoint
    prev = i + 1
    i = line.index(" ", prev + 1)
    endpoint = line[prev:i]
    res.append(endpoint)

    # HTTP version
    prev = i + 1
    i = line.index(" ", prev + 1) - 1
    version = line[prev:i]
    res.append(version)

    # Status code
    prev = i + 1
    i = line.index(" ", prev + 1)
    status = line[prev + 1:i]
    res.append(status)

    # Response Size
    prev = i + 1
    i = line.index(" ", prev + 1)
    size = line[prev:i]
    # res.append(size)

    # User Agent
    prev = line.index(' ', i + 1)
    user_agent = line[prev + 2:-1]
    res.append(user_agent)

    return res

with open("preprocessed.csv", "w") as f:
    writer = csv.writer(f, delimiter=",")
    # writer.writerow(["IP", "Timestamp", "Method", "Endpoint", "HttpVersion", "Status", "Size", "UserAgent"])
    output_lines = []
    for line in tqdm.tqdm(lines):
        try:
            output_lines.append(preprocess_line(line))
        except:
            print("ERROR on line", line)
            sys.exit(1)
    output_lines.sort(key=lambda r: r[1])
    writer.writerows(output_lines)

print("Preprocessing complete. Output written to preprocessed.csv")
