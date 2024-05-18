---
tags: Linux-Admin user user-group
---

![[Pasted image 20230406121403.png]]

**Users are found in the /home directory**

### Create User
- sudo adduser "username"
-  **when a user is created, their username also becomes a group**

### Create Group
- sudo addgroup "groupname"

### Add User to Group
- sudo usermod -aG "groupname" "username"

### Check/Alter Sudoers
- sudo visudo

### Check User's Sudo Privileges
- sudo -Ul

### Removing Users
- Remove from Group
	- sudo usermod -G "groupname" "username"
- Remove from system
	- sudo deluser --remove-home "username"

