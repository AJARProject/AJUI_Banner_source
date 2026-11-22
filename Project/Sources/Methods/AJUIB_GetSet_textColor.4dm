//%attributes = {"invisible":true}
  // AJUIB_GetSet_textColor ( $color_t ) -> return
  //
  // $color_t : (text) color
  // return : (text) (return) text color
  //
  // Getter/Setter for the text color property.

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:18:23
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_textColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $color_t : Text

If (Count parameters=0)
	$result:=This.text.textColor
Else 
	$color_t:=$param1
	If ($color_t#"")
		This.text.textColor:=$color_t
	End if 
End if 