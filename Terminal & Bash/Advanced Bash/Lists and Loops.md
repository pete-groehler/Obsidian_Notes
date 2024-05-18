---
tags: Bash Terminal Bash-scripting
---

## Syntax example
for day in ${days[@]}
do
    if [ $day = 'sun' ] || [ $day = 'sat' ]
    then
        echo "It is the weekend! Take it easy!"
    else
        echo "It is a weekday! Get to work!"
    fi
done