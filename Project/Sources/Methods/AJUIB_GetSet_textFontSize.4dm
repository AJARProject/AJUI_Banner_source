//%attributes = {"invisible":true}
  // AJUIB_GetSet_textFontSize ( $fontSize_l ) -> return
  //
  // $fontSize_l : (longint) font size
  // return : (longint) (return) current font size
  //
  // Getter/Setter for the text font size property.

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:21:49
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_textFontSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$fontSize_l)

If (Count parameters:C259=0)
	$0:=This:C1470.text.textFontSize
Else 
	$fontSize_l:=$1
	If ($fontSize_l>0)
		This:C1470.text.textFontSize:=$fontSize_l
	End if 
End if 