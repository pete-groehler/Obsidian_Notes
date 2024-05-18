---
tags: Linux Linux-Admin Backups
---

![[Pasted image 20230415114956.png]]

## Syntax
	tar "options" "new_archive" "objects to archive"
- ### Common Options
	- -c == create
	- -v == verbose
	- -f == filename
	- -z == zip
	- -x == extract

## Create Full Backup
![[Pasted image 20230415115424.png]]

![[Pasted image 20230415115445.png]]

![[Pasted image 20230415115513.png]]

![[Pasted image 20230415115539.png]]

## Create Incremental Backup

![[Pasted image 20230415115951.png]]

- ### Syntax
	tar cvvWf "new archive" --listed-incremental="snapshot file".snar --level=0 "file path to archive"

- ### Adding Incremental Backup after Level 0
	tar cvvWf "new archive" --listed-incremental="snapshot created at Level 0".snar "file path to archive"