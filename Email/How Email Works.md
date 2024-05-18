---
tags: email
---

## Step 1
- Email is crafted in an email service, once user clicks "Send", emails is forwarded to sender's mail server.
- Email server == **MTA** (mail transfer agent)
![[Pasted image 20230604194350.png]]

## Step 2
- Sender's mail server does a DNS lookup of receiver's domain to determine mail server (MX Record)
![[Pasted image 20230604194612.png]]

## Step 3
- Using **STMP** (Simple Mail Transfer Protocol), sender's mail service sends email to receiver's mail service.

## Step 4
- Sender's email is pulled from receiver's mail server.
### POP3 and IMAP
![[Pasted image 20230604200018.png]]
**POP3 and IMAP = Layer 7: Application (OSI Model)**
- POP3 == Port 110
- IMAP == Port 143
