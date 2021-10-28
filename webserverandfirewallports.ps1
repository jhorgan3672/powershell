
#Install IIS Web Server
#Options:  Web-Server, Web-Basic-Auth, Web-CertProvider --> Will install IIS, Basic Authentication and SSL.
#Options: -IncludeAllSubFeature will install all roles on IIS web server.



Install-WindowsFeature -Name "Web-Server", "Web-Basic-Auth", "Web-CertProvider"  -IncludeManagementTools -ComputerName "IGSAAAEGASER038.gs.doin.net"

#Sets all inbound rules on all required ports for ArcGIS Server and Portal for ArcGIS.
New-NetFirewallRule -DisplayName "ArcGIS Server HTTP: 6080" -Direction Inbound -LocalPort 6080 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "ArcGIS Server HTTPS: 6443" -Direction Inbound -LocalPort 6443 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Portal for ArcGIS HTTP: 7080" -Direction Inbound -LocalPort 7080 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Portal for ArcGIS HTTPS: 7443" -Direction Inbound -LocalPort 7443 -Protocol TCP -Action Allow


#Sets all outbound rules on all required ports for ArcGIS Server and Portal for ArcGIS. 
New-NetFirewallRule -DisplayName "ArcGIS Server HTTP: 6080" -Direction Outbound -LocalPort 6080 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "ArcGIS Server HTTPS: 6443" -Direction Outbound -LocalPort 6443 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Portal for ArcGIS HTTP: 7080" -Direction Outbound -LocalPort 7080 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Portal for ArcGIS HTTPS: 7443" -Direction Outbound -LocalPort 7443 -Protocol TCP -Action Allow






