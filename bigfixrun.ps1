Start-Process 'C:\Program Files (x86)\BigFix Enterprise\BES Client\BESClientUI.exe'

$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate('BigFix Support Center') | out-NULL

sleep -s 2

$wshell.SendKeys('{TAB}')

sleep -s 2

$wshell.SendKeys('{TAB}')

sleep -s 2          

$wshell.SendKeys('{TAB}')

sleep -s 2

$wshell.SendKeys('{ENTER}')