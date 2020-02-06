//%attributes = {"invisible":true}
  // AJUIB_GetSet_textFontStyle ( $fontStyle_t ) -> return
  //
  // $fontStyle_t : (text) font style
  // return : (text) (return) current font style
  //
  // Getter/Setter for the text font style property.

If (False:C215)
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

C_TEXT:C284($0;$1;$fontStyle_t)

If (Count parameters:C259=0)
	$0:=This:C1470.text.textFontStyle
Else 
	$fontStyle_t:=$1
	If ($fontStyle_t#"")
		This:C1470.text.textFontStyle:=$fontStyle_t
	End if 
End if 