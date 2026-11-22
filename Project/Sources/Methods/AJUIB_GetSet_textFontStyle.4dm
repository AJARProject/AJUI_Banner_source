//%attributes = {"invisible":true}
  // AJUIB_GetSet_textFontStyle ( $fontStyle_t ) -> return
  //
  // $fontStyle_t : (text) font style
  // return : (text) (return) current font style
  //
  // Getter/Setter for the text font style property.

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:22:58
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_textFontStyle
	  // Description
	  // SVG font style type available : normal | italic | oblique | inherit
	  //
	  // ----------------------------------------------------
	
End if 

var $fontStyle_t : Text

If (Count parameters=0)
	$result:=This.text.textFontStyle
Else 
	$fontStyle_t:=$param1
	If ($fontStyle_t#"")
		This.text.textFontStyle:=$fontStyle_t
	End if 
End if 