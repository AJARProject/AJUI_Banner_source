//%attributes = {"invisible":true}
  // AJUIB_GetSet_borderColor ( $borderColor_t ) -> return
  //
  // $borderColor_t : (text) color
  // return : (text) (return) border color
  //
  // Getter/Setter for the border color property of the banner.

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:04:01
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_borderColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$borderColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.borderColor
Else 
	$borderColor_t:=$1
	If ($borderColor_t#"")
		This:C1470.banner.borderColor:=$borderColor_t
	Else 
		This:C1470.banner.borderColor:="none"
	End if 
End if 