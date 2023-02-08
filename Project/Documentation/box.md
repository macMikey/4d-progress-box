<!-- Making progress boxes more funner -->

# Class box

Encapsulates 4d's **Progress Box** commands so they are quicker to deploy



## Class Constructor

All parameters are optional

Parameter Name  | Datatype | Description
-- | -- | --
Title | Text | On MacOS, appears above the progress indicator
Message | Text | On MacOS, appears below the progress indicator
Show Cancel Button | Boolean | Whether a Cancel button should be shown



#### Example:

```4d
$x:=cs.progress.box.new("Hello. This is a temporary title."; ""; True)
$x.titleFontSize:=18
$x.messageFontSize:=12
$x.title:="Waiting two seconds..."
$x.barberPole()
DELAY PROCESS(Current process; 120)
For ($i; 1; 100)
	$x.update($i/100)
	If ($x.cancelButtonPressed())
		break
	End if 
	$x.message:="Completed "+String($i)+"/100"
	DELAY PROCESS(Current process; 20)
End for //$i;1;100
$x.close()
```



## API



### barberPole()

Turns the progress indicator into an animation



### close()

Closes the progress box
***This may not prevent you from continuing to interact with the class. Continuing to interact with the class at this point will cause 4D to throw an error. The class will attempt to ignore any calls to the instance, if it knows it has been closed.***



### closeAll()

Closes all open progress boxes
***This may not prevent you from continuing to interact with the class. Continuing to interact with the class at this point will cause 4D to throw an error. The class will attempt to ignore any calls to the instance, if it knows it has been closed.***



### cancelButton ( { $title : Text } )

* Shows the cancel button, if it is not visible
* If **$title** is passed, assigns the label of the button, otherwise uses "Cancel"



### cancelButtonPressed() -> Boolean

Returns state of cancel button since the last time checked.



## Property Setters

At this time, there are no getters



### message ( { $message : Text } )

The text that appears below the progress bar



### messageFont ( { $fontName : Text } ) 

Sets the font used to display the message (below the progress bar)



### messageFontSize ( { $size : Integer } ) 

Sets the size of the text used to display the message (below the progress bar)



### title ( { $title : Text } )

The text that appears above the progress bar



### titleFont ( { $fontName : Text } ) 

Sets the font used to display the title (above the progress bar)



### titleFontSize ( { $size : Integer } ) 

Sets the size of the text used to display the title (above the progress bar)



### update ( $newPercent : real )

* $newPercent is a value between 0 and 1
* Moves the progress bar 





## Private API



### _notClosed () -> Boolean

If the class knows that it has been closed, returns **False** so that other functions and setters for the class don't throw an error.