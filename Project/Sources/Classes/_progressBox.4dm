Class constructor($title : Variant; $message : Variant; $showCancel : Variant)
	This:C1470.ID:=Progress New()
	If (Not:C34(Undefined:C82($title)))
		This:C1470.title:=$title
	End if 
	
	If (Not:C34(Undefined:C82($message)))
		This:C1470.message:=$message
	End if 
	
	If (Not:C34(Undefined:C82($showCancel)))
		This:C1470.cancelButton()
	End if 
	
	// ===============================================================================================================
	// =                                                                                                             =
	// =                                             A   P   I                                                       =
	// =                                                                                                             =
	// ===============================================================================================================
	
	
Function barberPole
	Progress SET PROGRESS(This:C1470.ID; -1)
	// _______________________________________________________________________________________________________________
	
	
	
Function close
	Progress QUIT(This:C1470.ID)
	// _______________________________________________________________________________________________________________
	
	
	
Function closeAll
	Progress QUIT(0)
	// _______________________________________________________________________________________________________________
	
	
	
Function cancelButton($title : Variant)
	$title:=$title || "Cancel"
	Progress SET BUTTON TITLE(This:C1470.ID; $title)
	Progress SET BUTTON ENABLED(This:C1470.ID; True:C214)
	// _______________________________________________________________________________________________________________
	
	
	
Function cancelButtonPressed()->$bool : Boolean
	return Progress Stopped(This:C1470.ID)
	
	
	
	// ===============================================================================================================
	// =                                                                                                             =
	// =                                 P R O P E R T Y    S E T T E R S                                            =
	// =                                                                                                             =
	// ===============================================================================================================
	
	
	
Function set message($message : Text)
	Progress SET MESSAGE(This:C1470.ID; $message; True:C214)
	// _______________________________________________________________________________________________________________
	
	
Function set messageFont($what : Text)
	Progress SET FONTS(""; $what)
	// _______________________________________________________________________________________________________________
	
	
	
Function set messageFontSize($what : Integer)
	Progress SET FONT SIZES(-1; $what)
	// _______________________________________________________________________________________________________________
	
	
	
Function set title($title : Text)
	Progress SET TITLE(This:C1470.ID; $title)
	// _______________________________________________________________________________________________________________
	
	
	
Function set titleFont($what : Text)
	Progress SET FONTS($what; "")
	// _______________________________________________________________________________________________________________
	
	
	
Function set titleFontSize($what : Integer)
	Progress SET FONT SIZES($what; -1)
	// _______________________________________________________________________________________________________________
	
	
	
Function update($newPercent)
	Progress SET PROGRESS(This:C1470.ID; $newPercent)
	// _______________________________________________________________________________________________________________
	