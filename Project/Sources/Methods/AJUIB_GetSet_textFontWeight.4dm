//%attributes = {"invisible":true}
  // AJUIB_GetSet_textFontWeight ( $fontWeight_t ) -> return
  //
  // $fontWeight_t : (text) font weight
  // return : (text) (return) current font weight
  //
  // Getter/Setter for the text font weight property.

If (False:C215)
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

C_TEXT:C284($0;$1;$fontWeight_t)

If (Count parameters:C259=0)
	$0:=This:C1470.text.textFontWeight
Else 
	$fontWeight_t:=$1
	If ($fontWeight_t#"")
		This:C1470.text.textFontWeight:=$fontWeight_t
	End if 
End if 