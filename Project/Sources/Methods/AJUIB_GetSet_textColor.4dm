//%attributes = {"invisible":true}
  // AJUIB_GetSet_textColor ( $color_t ) -> return
  //
  // $color_t : (text) color
  // return : (text) (return) text color
  //
  // Getter/Setter for the text color property.

If (False:C215)
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

C_TEXT:C284($0;$1;$color_t)

If (Count parameters:C259=0)
	$0:=This:C1470.text.textColor
Else 
	$color_t:=$1
	If ($color_t#"")
		This:C1470.text.textColor:=$color_t
	End if 
End if 