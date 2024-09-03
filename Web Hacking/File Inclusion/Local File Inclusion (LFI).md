---
tags:
  - Web-Hacking
  - File_Inclusion
---
Local File Inclusion (LFI) occurs when a web application allows users to view files outside the /var/www/html directory without validation/restrictions.

## Error Messages can point to LFI
**Analyzing Error Messages from test input may provide clues to how data is being passed**

Example:
For a webpage which appears as http://webapp.thm/index.php?lang=EN, if we were to input THM after lang=, we get the following error:
![[Pasted image 20240829134038.png]]

- Error message discloses how input function is handling data: **include (languages/THM.php)**
- Error message also reveals the full web application directory path: **/var/www/html/THM-4**
![[Pasted image 20240902135553.png]]

## Utilizing Null Bytes
If we attempt [[Directory Traversal]] with the information above on the full directory path, we receive this error:
![[Pasted image 20240902140108.png]]
- **Web Application appends ".php" to input before processing**

### Utilizing a null byte (%00 or 0x00) in user-supplied data terminates a string
Adding a null byte (%00) to the payload allows the attacker to strip the addition of ".php" and execute directory traversal.
![[Pasted image 20240902141353.png]]