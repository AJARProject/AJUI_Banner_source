//%attributes = {"invisible":true}
  // AJUIB_GetSet_textFontName ( $fontName_t ) -> return
  //
  // $fontName_t : (text) font name
  // return : (text) (return) current font name
  //
  // Getter/Setter for the text font name property.

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:20:01
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_textFontName
	  // Description
	  // Warning !!! not all font work with SVG
	  //
	  // ----------------------------------------------------
End if 

var $fontName_t : Text

If (Count parameters=0)
	$result:=This.text.textFontName
Else 
	$fontName_t:=$param1
	If ($fontName_t#"")
		This.text.textFontName:=$fontName_t
	End if 
End if 