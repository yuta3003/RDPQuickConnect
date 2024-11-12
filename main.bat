@echo off
Set SERVER=xxx.xxx.xxx.xxx
Set USERNAME=xxx
Set PASSWORD="xxx"

Cmdkey /generic:TERMSRV/%SERVER% /user:%USERNAME% /pass:%PASSWORD%
Start mstsc /v:%SERVER%
Timeout 3
Cmdkey /delete:TERMSRV/%SERVER%
