---
tags:
  - Penetration-Testing
  - Enumeration
  - Nmap
---
## Why Nmap?
Currently the industry standard: no other port scanning tool comes close to the functionality.
- Versatile due to massive scripting engine

## Nmap Switches
- Syn Scan
```bash
-sS
```

- Use Default Scripts
```bash
-sC
```

- UDP Scan
```bash
-sU
```

- Detect Target OS
```bash
-O
```

- Detect Service Versions
```bash
-sV
```

- Verbose/Very Verbose Output
```bash
-v
-vv
```

- Output to text file
```bash
nmap -oN scan.txt 192.168.1.1
```

- Aggressive Mode (Service Detection, OS Detection, Traceroute, and Default Scripts)
```bash
-a
```

- Query DNS of Offline Hosts
```bash
-R
```

- Use Multiple Sources for List
```bash
nmap -iL list_of_hosts.txt
```

### Find Live Hosts W/O Port Scan
```bash
nmap -sn TARGETS
```

## Port Scan Switches
- Scan Specific Port
```bash
-p [port]
```

- Scan Port Range
```bash
-p [start port]-[end port]
```

- Scan All Ports
```bash
-p-
```

## ICMP/Ping Options
**Firewalls may block some or all ICMP requests, need T&E**
- Use ICMP echo request to discover live hosts
```bash
-PE
```

- Use ICMP Timestamp Request
```bash
-PP
```

- Use ICMP Address Mask Query
```bash
-PM
```

- Use TCP SYN Ping
	- **Can designate port**
	- **Does NOT require privileged access**
```bash
-PS"port"
```

- Use TCP ACK Ping
	- **Can designate port**
	- **DOES require privileged access**
```bash
-PA"port"
```

## Nmap Scripting Engine
- Designate Script Category
```bash
--script=
```

### Script Categories

| Script Category | Description                                    |
| --------------- | ---------------------------------------------- |
| `auth`          | Authentication related scripts                 |
| `broadcast`     | Discover hosts by sending broadcast messages   |
| `brute`         | Perform brute force against logins             |
| `default`       | Default scripts                                |
| `discovery`     | Retrieve accessible info (DB tables, DNS)      |
| `dos`           | Detect servers vulnerable to DoS               |
| `exploit`       | Attempt to exploit vulnerable services         |
| `external`      | Checks using 3rd party (Geoplugin, VirusTotal) |
| `fuzzer`        | Fuzzing attacks                                |
| `intrusive`     | Brute force and Exploitation                   |
| `malware`       | Scans for backdoors                            |
| `safe`          | Safe scripts that will not crash target        |
| `version`       | Retrieve service versions                      |
| `vuln`          | Checks/Exploits vulnerable services            |

## Firewall Evasion Techniques
### Stealthy Scans
- NULL scan
	- TCP request is sent with no flags at all. Target should respond with RST if port is closed.
	- **Cannot verify if a port is indeed open (no response)**
	- **Must use sudo**
```bash
-sN
```

- FIN scan
	- TCP request sent with FIN flag (usually used to gracefully close connection). Nmap expects RST if port is closed.
	-  **Cannot verify if a port is indeed open (no response)**
	- **Must use sudo**
```bash
-sF
```

- XMAS scan
	- Send malformed TCP packet, expecting RST response for closed ports.
```bash
-sX
```

**NULL, FIN, and XMAS scans will only ever identify ports as being open|filtered, closed, or filtered**

- Do not Ping host before scanning (assume host is alive)
```bash
-Pn
```
**Helps to bypass ICMP blocks by firewall, will continue to run if host is dead**

### Packet Fragmentation
- Fragment packets, making it less likely that packets are detected by firewall/IDS
```bash
-f
```

### Set Max Packet Size
- **Must be Multiple of 8**
```bash
--mtu <number>
```

### Add Delay Between Packets
- **Can be set to milisecond (ms), second (s), minute (m), or hour (h)**
```bash
--scan-delay <time>ms
```

### Send Packet with Bad Checksum
- Any real TCP/IP stack would drop this packet, however, firewalls may potentially respond automatically, without bothering to check the checksum of the packet. As such, this switch can be used to determine the presence of a firewall/IDS.
```bash
--badsum
```

### Append Random Data to Packet
- Useful for a variety of reasons, such as evading Intrusion Detection Systems (IDS), avoiding traffic shaping rules, or simply making the scan less identifiable as a scan.
```bash
--data-length <number_of_bytes>
```

### Do Not Send DNS queries
- Normal behavior for Nmap is to use reverse-DNS queries to determine hostnames, this turns that off.
```bash
-n
```

### Decoy Scans
- Utilize decoy IPs to mask attacker IP, appears as if scan is coming from multiple sources.
	- Can use RND to specify a random IP address
	- Use ME to designate your IP in the mix
```bash
nmap -D 10.10.0.1,10.10.0.2,RND,RND,ME 10.10.5.232
```
