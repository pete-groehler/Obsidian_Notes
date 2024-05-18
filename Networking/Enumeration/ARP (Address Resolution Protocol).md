---
tags: Networking Enumeration
---

**Maps MAC address to IP address in a LAN so device knows where to send traffic**

- ARP is a Level 2: Data Link Protocol [[OSI Model]]
### Device broadcasts ARP request to all devices to find MAC address for matching IP
![[Pasted image 20230519164706.png]]

### Device replies w/MAC address if IP is recognized
![[Pasted image 20230519164921.png]]

### IP/MAC correlation is saved in device's ARP cache
![[Pasted image 20230519165043.png]]

## ARP Cache Timeout
- ARP entries are dynamic, with a limited lifecycle
- When ARP Cache Timeout expires, any future requests for the host need a new ARP request.
![[Pasted image 20230519165350.png]]