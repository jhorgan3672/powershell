#Creates a certificate signing request that can be submitted to "https://portal.doi.net/programs/ECM/SystemsCAB/CSR/default.aspx"

Write-Host "Creating CertificateRequest(CSR) for $CertName `r "
 
Invoke-Command -ComputerName IGSAAAHMLTNE065 -ScriptBlock {
 
$CertName = "IGSAAAHMLTNE065_testCert" #New server name goes here
$CSRPath = "c:\temp\$($CertName)_.csr"
$INFPath = "c:\temp\$($CertName)_.inf"
$Signature = '$Windows NT$' 
 
 
$INF =
@"
[Version]
Signature= "$Signature" 
 
[NewRequest]
Subject = "CN=$CertName, OU=Eastern Energy Research Science Center, O=U.S. Geological Survey, L=Reston, S=Virginia, C=US"
KeySpec = 1
KeyLength = 2048
Exportable = TRUE
MachineKeySet = TRUE
SMIME = False
PrivateKeyArchive = FALSE
UserProtected = FALSE
UseExistingKeySet = FALSE
ProviderName = "Microsoft RSA SChannel Cryptographic Provider"
ProviderType = 12
RequestType = PKCS10
KeyUsage = 0xa0
 
[EnhancedKeyUsageExtension]
 
OID=1.3.6.1.5.5.7.3.1 
"@
 
write-Host "Certificate Request is being generated `r "
$INF | out-file -filepath $INFPath -force
certreq -new $INFPath $CSRPath
 
}
write-output "Certificate Request has been generated"
