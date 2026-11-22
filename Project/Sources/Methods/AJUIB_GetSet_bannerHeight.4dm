//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerHeight ( $height_l ) -> return
  //
  // $height_l : (longint) height
  // return : (longint) (return) height of the banner
  //
  // Getter/Setter for the height property of the banner.

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 13:57:22
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_bannerHeight
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $height_l : Integer

If (Count parameters=0)
	$result:=This.banner.bannerHeight
Else 
	$height_l:=$param1
	If ($height_l>=0)
		This.banner.bannerHeight:=$height_l
	End if 
End if 