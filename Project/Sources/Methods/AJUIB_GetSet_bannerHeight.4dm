//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerHeight ( $height_l ) -> return
  //
  // $height_l : (longint) height
  // return : (longint) (return) height of the banner
  //
  // Getter/Setter for the height property of the banner.

If (False:C215)
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

C_LONGINT:C283($0;$1;$height_l)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.bannerHeight
Else 
	$height_l:=$1
	If ($height_l>=0)
		This:C1470.banner.bannerHeight:=$height_l
	End if 
End if 