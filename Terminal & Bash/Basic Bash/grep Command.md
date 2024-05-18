---
tags: Bash Terminal Bash-scripting
---

## Search files for a specific datapoint
	![[Pasted image 20230403214423.png]]
## Syntax
- grep "data point" "file to search inside"
- ![[Pasted image 20230403214606.png]]
- ### Search term in multiple files of same type
	- grep "data point" * "file type"
	- ![[Pasted image 20230403214757.png]]
- ### Display files containing search tearm
	- grep -l "data point" "file to search"
	- ![[Pasted image 20230403214949.png]]

- ### Grep Multiple Strings
	- Use Escape Characters
	- grep "datapoint1"\|"datapoint2"