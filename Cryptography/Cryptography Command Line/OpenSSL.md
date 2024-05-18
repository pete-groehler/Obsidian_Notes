---
tags: Cryptography Symmetric
---

### Comand-Line Tool for Symmetric Encryption/Decryption

## Syntax
- Create Key/IV
	`openssl enc -pbkdf2 -nosalt -aes-256-cbc -k mypassword -P > key_and_IV`

- Encrypting
	`openssl enc -pbkdf2 -nosalt -aes-256-cbc -in plainmessage.txt -out plainmessage.txt.enc -base64 -K 89E01536AC207279409D4DE1E5253E01F4A1769E696DB0D6062CA9B8F56767C8 -iv EE99333010B23C01E6364E035E97275C`

- Decrypting
	`openssl enc -pbkdf2 -nosalt -aes-256-cbc -in plainmessage.txt.enc -d -base64 -K 89E01536AC207279409D4DE1E5253E01F4A1769E696DB0D6062CA9B8F56767C8 -iv EE99333010B23C01E6364E035E97275C`

![[Pasted image 20230629134312.png]]