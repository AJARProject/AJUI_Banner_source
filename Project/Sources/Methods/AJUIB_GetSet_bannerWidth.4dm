//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerWidth ( $width_l ) -> return
  //
  // $width_l : (longint) width
  // return : (longint) (return) width of the banner
  //
  // Getter/Setter for the width property of the banner.

If (False:C215)
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

C_LONGINT:C283($0;$1;$width_l)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.bannerWidth
Else 
	$width_l:=$1
	If ($width_l>=0)
		This:C1470.banner.bannerWidth:=$width_l
	End if 
End if 