//%attributes = {"invisible":true}
  // AJUIB_GetSet_borderColor ( $borderColor_t ) -> return
  //
  // $borderColor_t : (text) color
  // return : (text) (return) border color
  //
  // Getter/Setter for the border color property of the banner.

#DECLARE($param1 : Text) -> $result : Text

If (False)
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

var $borderColor_t : Text

If (Count parameters=0)
	$result:=This.banner.borderColor
Else 
	$borderColor_t:=$param1
	If ($borderColor_t#"")
		This.banner.borderColor:=$borderColor_t
	Else 
		This.banner.borderColor:="none"
	End if 
End if 