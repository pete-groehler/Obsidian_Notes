---
tags:
  - attack-server
  - attack-servers
  - attack-users
  - attack-web-apps
  - Cookies
  - Session
  - Red-Team
---
HTTP resources are inherently **stateless**
- no way for the webpage to distinguish you from anyone else.

Websites need a way to deliver content that is specific to each user.
- **Sessions**
	- Unique server-side sets of user data that are used to customize webpages for specific user accessing them.
- **Cookies**
	- Small pieces of text data that, when sent by an HTTP server's response header, are saved by the user's HTTP client.

## Session Hijacking
![[Pasted image 20231209201345.png]]

### Example: Predictable Session Cookies
![[Pasted image 20231209201509.png]]
![[Pasted image 20231209201537.png]]
![[Pasted image 20231209201559.png]]

