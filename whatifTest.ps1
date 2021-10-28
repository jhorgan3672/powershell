
            
function test {   
   $currentStartTime=Get-Date
   echo $currentStartTime
                                                            
      while($val -ne 200) 
      {$val++ 

      #This will give you an output that will tell you open windows you have.
      #Get-Process | Where-Object {$_.MainWindowTitle -ne ""} | Select-Object MainWindowTitle
     
      $wshell = New-Object -ComObject wscript.shell
      $wshell.AppActivate('Calendar | Microsoft Teams') | out-NULL                                                                                                                                                                  

      Start-Sleep -s 60

      #$wshell = New-Object -ComObject wscript.shell;
      $wshell.AppActivate('whatifTest.ps1 - myPowershell - Visual Studio Code') | out-NULL                    

      $wshell.SendKeys('^{TAB}')    
     
      Start-Sleep -s 60
                                                                                                
      
      #echo $val
      
      }
      $currentEndTime=Get-Date
      echo $currentEndTime
   }
   
test{}      





