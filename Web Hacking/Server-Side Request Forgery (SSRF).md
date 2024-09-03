---
tags:
  - Penetration-Testing
  - Web-Hacking
  - SSRF
---
## What is SSRF?
Security Vulnerability where an attacker tricks the server into making additional or altered HTTP requests on their behalf, leading to access to internal resource, data leaks, or RCE by manipulating the server's request-making capabilities.

## Regular v Blind SSRF
Regular SSRF allows attacker to **observe results of server request** 
- Example: URL manipulation with immediate observation of changes
Blind SSRF is **not observable**
- Example: Successful request changes privileges/application behavior (ie admin areas)

## Defeating Common SSRF Defenses

### Deny List
A Deny List is where all requests are **accepted** apart from resources specified in a list or that match a particular pattern.

Web Applications may employ a deny list to protect sensitive endpoints, IP addresses, or domains.

#### Bypassing Deny List
- Use Alternative localhost references (0, 0.0.0.0, 0000, 127.1, etc) or use subdomains that have a DNS record that points to 169.254.169.254

### Allow List
Allow List is where all requests are **denied** unless specified in the list or matching a particular pattern.

#### Bypassing Allow List
- Create a subdomain on an attacker's domain (i.e. https://website.thm.attackers-domain.thm). The application logic would now allow this input and let attacker control HTTP requests.

### Open Redirect
Open Redirect is an endpoint on the server where the website visitor gets automatically redirected to another website address without proper validation (i.e. a dashboard page after successful login)
``https://example.com/login?redirect=http://example.com/dashboard``


