//%attributes = {"invisible":true}
  // AJUIB_GetSet_textFontName ( $fontName_t ) -> return
  //
  // $fontName_t : (text) font name
  // return : (text) (return) current font name
  //
  // Getter/Setter for the text font name property.

If (False:C215)
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

C_TEXT:C284($0;$1;$fontName_t)

If (Count parameters:C259=0)
	$0:=This:C1470.text.textFontName
Else 
	$fontName_t:=$1
	If ($fontName_t#"")
		This:C1470.text.textFontName:=$fontName_t
	End if 
End if 