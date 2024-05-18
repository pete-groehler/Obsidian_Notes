---
tags: Password Password-Crack brute-force
---

**Password cracking tools cannot reverse a password hash**
- Use a wordlist of potential passwords and create hashes for each one, then compare to saved hashes.

## John the Ripper
![[Pasted image 20230406120021.png]]

- ### Syntax
	- john "hashfile" --wordlist="filepath of wordlist"
- ### Show Previously Cracked Hashes
	- john "hashfile" --show

- ### Using Hash Formats
	```bash
john --format=[format] --wordlist=[path to wordlist] [path to file]
```

- ### Searching for Format
	```bash
	john --list=formats | grep -iF "md5"
```

## Single Crack Mode
![[Pasted image 20240427205316.png]]

- ### Syntax
	```bash
	john --single --format=[format] [path to file]
```

## Custom Rules for John
Many organizations will require a certain level of password complexity to try to combat dictionary attacks (Capital letters, Numbers, Special Characters, etc)
- Can exploit that most users will be predictable in where they put these characters (Polopassword1!)

### Creating Custom Rules
Custom rules are defined in the `john.conf` file, usually located in `/etc/john/john.conf` if you have installed John using a package manager or built from source with `make` and in `/opt/john/john.conf` on the TryHackMe Attackbox.

![[Pasted image 20240427211402.png]]

![[Pasted image 20240427211435.png]]

### Using Custom Rules
```bash
john --wordlist=[path to wordlist] --rule=PoloPassword [path to file]
```
## Unshadow
- John can be very particular about the format of data required to work effectively.
	- In order to crack /etc/ shadow passwords, you need to combine it with /etc/passwd so John understands the data
- ### Syntax
	```bash
unshadow [path to passwd] [path to shadow]
```

## Zip2John
- Used to format data for John to crack password-protected zip files.
```bash
zip2john [options] [zip file] > [output file]
```
`[options]` - Allows you to pass specific checksum options to zip2john, this shouldn't often be necessary

## SSH2John
- Used to format data for John to crack private SSH keys.
```bash
ssh2john [id_rsa private key file] > [output file]
```

