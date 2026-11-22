//%attributes = {"invisible":true}
  // AJUIB_GetSet_textFontWeight ( $fontWeight_t ) -> return
  //
  // $fontWeight_t : (text) font weight
  // return : (text) (return) current font weight
  //
  // Getter/Setter for the text font weight property.

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:25:20
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_textFontWeight
	  // Description
	  // SVG font weight type available : normal | bold | bolder | lighter | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | inherit
	  //
	  // ----------------------------------------------------
End if 

var $fontWeight_t : Text

If (Count parameters=0)
	$result:=This.text.textFontWeight
Else 
	$fontWeight_t:=$param1
	If ($fontWeight_t#"")
		This.text.textFontWeight:=$fontWeight_t
	End if 
End if 