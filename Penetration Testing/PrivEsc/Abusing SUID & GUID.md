---
tags:
  - Penetration-Testing
  - Linux
  - PrivEsc
---


## What are SUID/GUID Permissions?
SUID (Set User ID) and GUID (Set Group ID) are special permissions in Unix operating systems that **allow users to run an executable binary with the permissions of the binary's owner (SUID) or group (GUID)**

### Example of SUID Binary
```bash
-rwsr-xr-x 1 root root 45992 Apr  4  2021 /usr/bin/passwd
```

- **'s' in first permission set denotes SUID bit is set for passwd command**

### Example of GUID Binary
```bash
-rwxr-sr-x 1 root mail 14392 Apr  4  2021 /usr/bin/procmail
```
- **'s' in second permission set denotes GUID is set for procmail**


## Finding SUID Binaries
**Use script like LinEnum or LinPeass**

**Manual One-Liner**
```bash
find / -perm -u=s -type f 2>/dev/null
```

