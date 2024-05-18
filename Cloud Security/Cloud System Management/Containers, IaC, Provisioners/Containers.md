---
tags: Cloud Docker
---
**Containers are essentially lightweight VMs**
- Smaller and use fewer resources by sharing what they have in common with other containers.

## Containers v VMs
1. Two separate VMs running on the same host are **independent**
2. Containers can share certain files
	- Can run on single host with same kernel.
	- **Only contain files relevant to its application**
![[Pasted image 20230806131934.png]]

VMs and containers often used together.
	- Provision powerful VM that runs multiple containers.

![[Pasted image 20230806132118.png]]

## Stateless v Stateful Containers
Containers are **stateful**
- Can't safely destroy a container and replace if it contains data no other instance has.
**Goal = Make containers as stateless as possible**
- Move data to a central location and extract serve/app logic as much as possible.

![[Pasted image 20230806132637.png]]

## Scaling Containers
**Horizontal Scaling**
- Create more instances to handle additional load.
**Vertical Scaling**
- Increase instance size (add RAM, CPU)
![[Pasted image 20230806133227.png]]
