---
tags: Windows Powershell
---

## Common Commands
![[Pasted image 20230507113724.png]]

## Documentation/Find Commands
- ### Documentation/Man
	- Get-Help {cmdlet}
- ### Specific Examples
	- Get-Help {cmdlet} -examples
- ### Find cmdlet by Noun
	- Get-Command -Type Cmdlet | Sort-Object -Property Noun | Format-Table -GroupBy Noun
- ### Find cmdlet by Verb
	- Get-Command -Type Cmdlet | Sort-Object -Property Verb | Format-Table -GroupBy Verb

## Wildcards
- ### Find by Noun
	- Get-Command -Noun {noun}

- ### Find by Verb
	- Get-Command -Verb {verb}

## Chocolatey
- ### Install Package
	- choco install -y "package"
- ### Uninstall Package
	- choco uninstall -y "package"