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

## Firewall Evasion Techniques
### Stealthy Scans
- NULL scan
	- TCP request is sent with no flags at all. Target should respond with RST if port is closed.
```bash
-sN
```

- FIN scan
	- TCP request sent with FIN flag (usually used to gracefully close connection). Nmap expects RST if port is closed.
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
