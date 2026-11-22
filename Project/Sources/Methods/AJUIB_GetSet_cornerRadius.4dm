//%attributes = {"invisible":true}
  // AJUIB_GetSet_cornerRadius ( $cornerRadius_l ) -> return
  //
  // $cornerRadius_l : (longint) corner rounding
  // return : (longint) (return) corner rounding of the banner
  //
  // Getter/Setter for the corner rounding property of the banner.

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:06:29
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_cornerRadius
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $cornerRadius_l : Integer

If (Count parameters=0)
	$result:=This.banner.cornerRadius
Else 
	$cornerRadius_l:=$param1
	If ($cornerRadius_l>=0)
		This.banner.cornerRadius:=$cornerRadius_l
	End if 
End if 