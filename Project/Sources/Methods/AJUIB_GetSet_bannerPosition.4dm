//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerPosition ( $position_t ) -> return
  //
  // $position_t : (text) position
  // return : (text) (return) current position
  //
  // Getter/Setter for the position property of the banner (banner : cr type only).

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 13:58:59
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_bannerPosition
	  // Description
	  // Position available : top-left | top-right | bottom-left | bottom-right
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$position_t)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.position
Else 
	$position_t:=$1
	If ($position_t#"")
		This:C1470.banner.position:=$position_t
	End if 
End if 