//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerWidth ( $width_l ) -> return
  //
  // $width_l : (longint) width
  // return : (longint) (return) width of the banner
  //
  // Getter/Setter for the width property of the banner.

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:02:58
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_bannerWidth
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $width_l : Integer

If (Count parameters=0)
	$result:=This.banner.bannerWidth
Else 
	$width_l:=$param1
	If ($width_l>=0)
		This.banner.bannerWidth:=$width_l
	End if 
End if 