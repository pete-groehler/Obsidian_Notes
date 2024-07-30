---
tags:
  - Penetration-Testing
  - Web-Hacking
---
## What is GoBuster?
GoBuster is a directory and web application brute force tool written in GoLang.
- Identifies hidden or non-linked content on web application

## Command Options
![[Pasted image 20240721140307.png]]

## Command Modes
- **Directory Mode** (Brute Force Directories on Web Server)
```bash
gobuster dir -u <target_url> -w <path_to_wordlist>
```

- **DNS Mode** (Brute Force DNS Subdomains)
```bash
gobuster dns -d <target_domain> -w <path_to_wordlist>
```

- **VHost Mode** (Brute Force VHost Names)
	- Discover additional virtual hosts that may be hosted on same IP
```bash
gobuster vhost -u <target_url> -w <path_to_wordlist>
```