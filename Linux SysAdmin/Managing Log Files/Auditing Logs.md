---
tags: Linux Linux-Admin Logs
---

## auditd
![[Pasted image 20230423200514.png]]

![[Pasted image 20230423200612.png]]

## Add audit rules
- sudo nano /etc/audit/rules.d/audit.rules

- -w /etc/shadow -p wa -k shadow
	- -w == watch  
	- -p == permission changes  
	- wa == write attributes  
	- k == name of rule

- When adding rules, restart the service
	- sudo systemctl restart auditd