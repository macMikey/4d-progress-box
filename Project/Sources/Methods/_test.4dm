//%attributes = {}
TRACE
$x:=cs._progressBox.new("Temporary Title"; ""; True)
$x.titleFontSize:=18
$x.messageFontSize:=14
$x.barberPole()
DELAY PROCESS(Current process; 60)
$x.title:="Counting to 100..."
For ($i; 1; 100)
	$x.update($i/100)
	If ($x.cancelButtonPressed())
		break
	End if 
	$x.message:="Completed "+String($i)+"/100"
	DELAY PROCESS(Current process; 20)
End for 
$x.close()
$x.closeAll()