---
tags:
  - Penetration-Testing
  - Web-Hacking
  - Command-Injection
---
## What is Command Injection?
**The ability to leverage user input fields to execute shell commands to manipulate the background OS of the web application**
- This vulnerability exists because applications often utilize *functions* in programming languages (PHP, Python, NodeJS) to pass data & make system calls.

## Exploiting Command Injection
**Applications that use user input to populate system commands with data can be manipulated with shell operators ( ; & && ) 

### Blind v Verbose Command Injection

| **Method**  | **Description**                                                                                                                                                            |     |
| ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --- |
| **Blind**   | Type of Injection where there is no direct output from the application when testing payloads, must observe behavior of application to determine if payload was successful. |     |
| **Verbose** | Type of injection where there is direct feedback from the application when testing payloads.                                                                               |     |
### Detecting Blind Command Injection
**Method 1: Utilize Command that Causes Time Delay**
- Utilizing ping or sleep will cause time delay/hang in application

**Method 2: Force Output**
- Utilize redirection commands (> » | ) to push results to a file

**Method 3: Utilize curl**

