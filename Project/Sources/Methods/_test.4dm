//%attributes = {}
TRACE:C157
$x:=cs:C1710._progressBox.new("me title"; ""; True:C214)
$x.titleFontSize:=18
$x.messageFontSize:=14
$x.barberPole()
DELAY PROCESS:C323(Current process:C322; 60)
For ($i; 1; 100)
	$x.update($i/100)
	If ($x.cancelButtonPressed())
		break
	End if 
	$x.message:="Completed "+String:C10($i)+"/100"
	DELAY PROCESS:C323(Current process:C322; 20)
End for 
$x.close()
$x.closeAll()