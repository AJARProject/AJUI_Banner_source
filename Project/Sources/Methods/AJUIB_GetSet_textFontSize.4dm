//%attributes = {"invisible":true}
  // AJUIB_GetSet_textFontSize ( $fontSize_l ) -> return
  //
  // $fontSize_l : (longint) font size
  // return : (longint) (return) current font size
  //
  // Getter/Setter for the text font size property.

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
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

var $fontSize_l : Integer

If (Count parameters=0)
	$result:=This.text.textFontSize
Else 
	$fontSize_l:=$param1
	If ($fontSize_l>0)
		This.text.textFontSize:=$fontSize_l
	End if 
End if 