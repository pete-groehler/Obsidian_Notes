---
tags: Network-Security IDS
---

![[Pasted image 20230703131207.png]]

### Unlike Firewalls, IDS detects & alerts of an attack
- IDS is **passive**
	- Does not respond to attack, log & document for analysis
	- Situational awareness of attacks
![[Pasted image 20230703131415.png]]

## Types of IDS
### Signature-based IDS
- Compares patterns of traffic to predefined signatures.
- Advantages
	- Good for identifying well-known attacks.
	- Can be updated as new attack signatures are released.
- Disadvantages
	- Vulnerable to attacks through packet spoofing.
	- Unable to detect 0-days

### Anomaly-based IDS
- Compares patterns of traffic against a well-known baseline
- Advantages
	- Good for detecting suspicious traffic that deviates from baseline.
	- Excellent at detecting when attackers scan or manipulate a network.
- Disadvantages
	- Prone to false alerts.
	- Assumes behavior does not deviate from the norm.