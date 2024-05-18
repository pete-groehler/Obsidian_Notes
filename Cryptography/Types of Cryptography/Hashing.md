---
tags: Cryptography Hashing
---

![[Pasted image 20230702110428.png]]

## Hashing is different from Encryption
- ### Keys vs No Keys
	- Encryption takes plaintext and converts to cipher with key + algorithm
	- Hashing converts plaintext to message digest with only an algorithm
	![[Pasted image 20230702111155.png]]
- ### Reversible vs Irreversible
	- Encryption converts readily between cipher and plaintext
	- Hashing is **one-way** == cannot be converted back to plaintext
	![[Pasted image 20230702111425.png]]
- ### Output Lengths
	- Hashing algorithms output at fixed lengths, regardless of input.
	![[Pasted image 20230702111600.png]]
- ### Goals [[The CIA Triad]]
	- Encryption == **privacy**
	- Hashing == **integrity**

## Generating Hashes
- ### Hashing Algorithms
	![[Pasted image 20230702111942.png]]
- ### Syntax
	md5sum "filename"
	sha256sum "filename"