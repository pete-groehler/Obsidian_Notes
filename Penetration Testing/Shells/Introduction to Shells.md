---
tags:
  - Penetration-Testing
  - Shells
---
## Types of Shells
- ### Reverse Shell
	When the target is forced to execute code that **connects back to the attacker**
	- Attackers sets up a listener to receive connections
	- **Reverse shells are better for bypassing firewalls**
- ### Bind Shell
	When code is executed on a target to establish a listener and start a shell directly on the target.

## Shell Stabilization
### Technique 1: Python
- Step 1: Stabilize
```bash
python -c 'import pty;pty.spawn("/bin/bash")'
```

- Step 2: Access to Term Commands (clear, etc)
```bash
export TERM=xterm
```

- Step 3: CTRL+Z to background shell

- Step 4: In attacker terminal, turn off terminal echo, giving tab complete + arrow keys + CTRL+C to kill processed. Then foreground rev shell.
```bash
stty raw -echo; fg
```

### Technique 2: rlwrap
rlwrap gives access to history, tab complete, and arrow keys immediately upon receiving a shell.
- Some manual stabilization must still be utilized.
- **Useful for Windows shells, which are often difficult to stabilize**

- Step 1: Ensure rlwrap is installed
```bash
sudo apt install rlwrap
```

- Step 2: Utilize rlwrap with netcat listener
```bash
rlwrap nc -lvnp <port>
```

- Step 3: CTRL+Z to background shell

- Step 4: In attacker terminal, turn off terminal echo, giving tab complete + arrow keys + CTRL+C to kill processed. Then foreground rev shell.
```bash
stty raw -echo; fg
```

