---
tags:
  - Web-Hacking
  - File_Inclusion
---
Directory Traversal vulnerabilities occur when user input is pass to a function such as **file_get_contents in PHP.**
- Paired with poor input validation/filtering

**Utilize dot-dot-slash command structure to manipulate file pointer to exit /var/www/html in order to read additional system files**

```
http://webapp.thm/get.php?file=../../../../etc/passwd
```

### Other Common Directory Traversal Payloads
![[Pasted image 20240812153957.png]]