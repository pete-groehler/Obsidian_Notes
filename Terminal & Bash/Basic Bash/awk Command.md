---
tags: Bash Terminal Bash-scripting
---

## Extract particular data from a string
![[Pasted image 20230404214823.png]]

## Syntax
awk '{print $(field_number)}'
- multiple field numbers == separate w/commas
	- awk '{print $1,$2}'
- **default syntax separates by spaces**

### search by separator other than spaces
- -F option followed by separator
	- awk -F, '{print $1}'

![[Pasted image 20230404215413.png]]

![[Pasted image 20230404215439.png]]

![[Pasted image 20230404215501.png]]

