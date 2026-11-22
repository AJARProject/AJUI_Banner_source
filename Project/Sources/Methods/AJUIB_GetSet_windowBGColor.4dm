//%attributes = {"invisible":true}
  // AJUIB_GetSet_windowBGColor ( $BGColor_t ) -> return
  //
  // $BGColor_t : (text) color
  // return : (text) (return) current window background color
  //
  // Getter/Setter for the window background color property of the banner. (banner window type only)

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:28:15
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_windowBGColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $BGColor_t : Text

If (Count parameters=0)
	$result:=This.window.windowBGColor
Else 
	$BGColor_t:=$param1
	If ($BGColor_t#"")
		This.window.windowBGColor:=$BGColor_t
	End if 
End if 