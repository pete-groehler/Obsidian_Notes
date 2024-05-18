---
tags: Bash Bash-scripting
---

![[Pasted image 20230406103803.png]]

![[Pasted image 20230406103843.png]]

![[Pasted image 20230406103914.png]]

## Script Syntax/Steps
1. nano "scriptname".sh
2. Enter nano
	1. #!/bin/bash
	2. Enter script commands
3. Ctrl+X, Y, Enter to save script
4. Make script executable
	1. Options
		1. chmod +x "scriptname"
		2. chmod "octal for write" "scriptname"
		3. bash "scriptname"
5. ./"scriptname" to run script
	1. bash "scriptname" also executes script

## Passing Arguments in Scripts
- ### Use $"argument number" to replace data
	- Example:
		- cat $1_Dealer_schedule | awk '{print $1, $2, $5,$6}'| grep "$2"
		- ** $1 and $2 == Argument 1, Argument 2**
	- sh "scriptname" Argument1 Argument 2 to run
