---
tags:
  - Penetration-Testing
  - Web-Hacking
---
## What is a Favicon?
A favicon is a small icon displayed in the browser's address bar or tab used for branding.
- Sometimes when frameworks are used to build a website (WordPress, Node, etc), and are not replaced with a custom one.
	- **Provide clues to the web application framework**

## Favicon Database
- https://wiki.owasp.org/index.php/OWASP_favicon_database

## Retrieving Favicon
1. Identify Favicon URL
	- Typically located at the root directory of the website or in a favicon.ico file
	- Can also be listed in HTML as rel=icon or rel=shortcut icon

2. Retrieve Favicon using Curl
```bash
curl -o favicon.ico <favicon_url>
```

3. Generate MD5 Hash to compare to OWASP Database
```bash
md5sum favicon.ico
```