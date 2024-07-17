---
tags:
  - Penetration-Testing
  - Shells
---
## Reverse Shell
```bash
nc -lvnp <port-number>
```
![[Pasted image 20240707164211.png]]
- **Ports <1024 will require sudo**

## Bind Shell
```bash
nc <target_ip> <port>
```

