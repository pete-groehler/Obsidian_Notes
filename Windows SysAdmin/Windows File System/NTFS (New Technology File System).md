---
tags:
  - Windows
---
### NTFS is known as a Journaling File System
- In case of failure, the file system can automatically repair folders/files on disk using a log file.

## File Permissions
- NTFS volumes can set the permissions **Full Control, Modify, Read & Execute, List Folder Contents, Read, Write**
![[Pasted image 20240606140841.png]]

## Viewing File Permissions
- Right-click the file or folder you want to check for permissions.
- From the context menu, select `Properties`.
- Within Properties, click on the `Security` tab.
- In the `Group or user names` list, select the user, computer, or group whose permissions you want to view.

## Alternate Data Streams
Every file has at least one data stream ($DATA)
- ADS allows files to contain more than one stream of data.
- **Powershell** gives ability to view ADS in files.