---
tags: Windows Powershell
---

## For Each Loop
### Syntax
	"import line here"
foreach ("condition here") {
    "PowerShell code block to be executed here"
}

## Examples
$csv = Import-Csv -Path .\chocoactivity.csv
foreach ($line in $csv) {
    choco uninstall $line.name -y
}

$directory = Get-ChildItem .\
foreach ($item in $directory) {
    Get-Acl $item
}
