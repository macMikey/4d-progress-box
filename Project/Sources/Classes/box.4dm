Class constructor($title : Variant; $message : Variant; $showCancel : Variant)
	This.ID:=Progress New()
	If (Not(Undefined($title)))
		This.title:=$title
	End if 
	
	If (Not(Undefined($message)))
		This.message:=$message
	End if 
	
	If (Not(Undefined($showCancel)))
		This.cancelButton()
	End if 
	
	// ===============================================================================================================
	// =                                                                                                             =
	// =                                             A   P   I                                                       =
	// =                                                                                                             =
	// ===============================================================================================================
	
	
Function barberPole
	If (This._notClosed())
		Progress SET PROGRESS(This.ID; -1)
	End if 
	// _______________________________________________________________________________________________________________
	
	
	
Function close
	Progress QUIT(This.ID)
	This.id:=0
	// _______________________________________________________________________________________________________________
	
	
	
Function closeAll
	Progress QUIT(0)
	// _______________________________________________________________________________________________________________
	
	
	
Function cancelButton($title : Variant)
	If (This._notClosed())
		$title:=$title || "Cancel"
		Progress SET BUTTON TITLE(This.ID; $title)
		Progress SET BUTTON ENABLED(This.ID; True)
	End if 
	// _______________________________________________________________________________________________________________
	
	
	
Function cancelButtonPressed()->$bool : Boolean
	return Progress Stopped(This.ID)
	
	
	
	// ===============================================================================================================
	// =                                                                                                             =
	// =                                 P R O P E R T Y    S E T T E R S                                            =
	// =                                                                                                             =
	// ===============================================================================================================
	
	
	
Function set message($message : Text)
	If (This._notClosed())
		Progress SET MESSAGE(This.ID; $message; True)
	End if 
	// _______________________________________________________________________________________________________________
	
	
Function set messageFont($what : Text)
	If (This._notClosed())
		Progress SET FONTS(""; $what)
	End if 
	// _______________________________________________________________________________________________________________
	
	
	
Function set messageFontSize($what : Integer)
	If (This._notClosed())
		Progress SET FONT SIZES(-1; $what)
	End if 
	// _______________________________________________________________________________________________________________
	
	
	
Function set title($title : Text)
	If (This._notClosed())
		Progress SET TITLE(This.ID; $title)
	End if 
	// _______________________________________________________________________________________________________________
	
	
	
Function set titleFont($what : Text)
	If (This._notClosed())
		Progress SET FONTS($what; "")
	End if 
	// _______________________________________________________________________________________________________________
	
	
	
Function set titleFontSize($what : Integer)
	If (This._notClosed())
		Progress SET FONT SIZES($what; -1)
	End if 
	// _______________________________________________________________________________________________________________
	
	
	
Function update($newPercent)
	If (This._notClosed())
		Progress SET PROGRESS(This.ID; $newPercent)
	End if 
	// _______________________________________________________________________________________________________________
	
	
	
	// ===============================================================================================================
	// =                                                                                                             =
	// =                                       P R I V A T E    A P I                                                =
	// =                                                                                                             =
	// ===============================================================================================================
Function _notClosed()
	return This.ID#0