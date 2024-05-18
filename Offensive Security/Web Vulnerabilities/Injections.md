---
tags:
  - attack-web-apps
  - attack-databases
  - attack-database
  - Red-Team
---
## Injection Attacks occur when an attacker supplies untrusted input to an application
- Malicious input, known as a **payload**, contains malicious data or code that is then processed as part of a **query**

# Types of Injections

## SQL Injection
- Works against an application by sending queries to a SQL database through **user input**
### Structure of a SQL Database & Query
- SQL databases organize data like a spreadsheet
![[Pasted image 20231209191707 1.png]]

![[Pasted image 20231209191745 1.png]]

### Always True Statements
- Always True Statements == Results are always true
	- The most common Always True Statement is **1=1**
![[Pasted image 20231209192136 1.png]]

## Cross-Site Scripting (XSS)
- Occurs when an application takes in malicious user input, which executes user-supplied code.
![[Pasted image 20231209192711 1.png]]

### Stored XSS
![[Pasted image 20231209192830 1.png]]
![[Pasted image 20231209192913 1.png]]

### Reflected XSS
![[Pasted image 20231209193035 1.png]]

![[Pasted image 20231209193109 1.png]]