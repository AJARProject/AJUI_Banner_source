//%attributes = {"invisible":true}
  // AJUIB_GetSet_cornerRadius ( $cornerRadius_l ) -> return
  //
  // $cornerRadius_l : (longint) corner rounding
  // return : (longint) (return) corner rounding of the banner
  //
  // Getter/Setter for the corner rounding property of the banner.

If (False:C215)
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

C_LONGINT:C283($0;$1;$cornerRadius_l)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.cornerRadius
Else 
	$cornerRadius_l:=$1
	If ($cornerRadius_l>=0)
		This:C1470.banner.cornerRadius:=$cornerRadius_l
	End if 
End if 