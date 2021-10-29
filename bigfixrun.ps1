Start-Process 'C:\Program Files (x86)\BigFix Enterprise\BES Client\BESClientUI.exe'

$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate('BigFix Support Center') | out-NULL

sleep -s 2

while($val1 -ne 2){
    $val1++
    $wshell.SendKeys('{TAB}')
    sleep -s 2
}

$wshell.SendKeys("^a")

sleep -s 2

while($val2 -ne 8){
    $val2++
    $wshell.SendKeys('{TAB}')
    sleep -s 2
}

#$wshell.SendKeys('{ENTER}')
