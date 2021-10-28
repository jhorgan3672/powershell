#To do this, you will need to copy the certificate you receive from your security team 
#onto the remote server and then execute certreq.exe like this 

#certreq.exe -accept -machine "C:\file\path\to\issuedcert.cer"

#Here is the command to import a certificate to the local machine trusted root certificate store

Import-Certificate -FilePath \\172.16.25.10\files\spiderip.crt  -CertStoreLocation 'Cert:\LocalMachine\Root' -Verbose  -WhatIf

#If you want to import the certificate to current user store

Import-Certificate -FilePath \\172.16.25.10\files\spiderip.crt  -CertStoreLocation 'Cert:\CurrentUser\Root'  -WhatIf

#In order to get a list of valid CertStoreLocation values, open Powershell and run "cd cert:". Afterwards type "dir".