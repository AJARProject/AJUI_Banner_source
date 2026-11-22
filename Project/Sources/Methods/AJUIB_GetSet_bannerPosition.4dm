//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerPosition ( $position_t ) -> return
  //
  // $position_t : (text) position
  // return : (text) (return) current position
  //
  // Getter/Setter for the position property of the banner (banner : cr type only).

#DECLARE($param1 : Text) -> $result : Text

If (False)
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

var $position_t : Text

If (Count parameters=0)
	$result:=This.banner.position
Else 
	$position_t:=$param1
	If ($position_t#"")
		This.banner.position:=$position_t
	End if 
End if 