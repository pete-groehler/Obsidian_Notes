---
tags: Linux Linux-Admin cron
---

![[Pasted image 20230415125223.png]]

![[Pasted image 20230415125251.png]]

## Syntax
	![[Pasted image 20230415125414.png]]
	Edit Crontab == crontab -e
	List Crontab == crontab -l

## Crontab Generators
https://crontab-generator.org/
https://crontab.guru/

## Check if User has Cronjob
- sudo tail /var/spool/cron/crontabs/"username"

## View/Edit Root Crontab
- sudo crontab -e

## System-Wide Cron Directories
![[Pasted image 20230423192952.png]]