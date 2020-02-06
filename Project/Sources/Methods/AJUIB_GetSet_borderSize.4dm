//%attributes = {"invisible":true}
  // AJUIB_GetSet_borderSize ( $size_l ) -> return
  //
  // $size_l : (longint) size
  // return : (longint) (return) border size
  //
  // Getter/Setter for the border size property of the banner.

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:05:21
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_borderSize
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($0;$1;$size_l)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.borderSize
Else 
	$size_l:=$1
	If ($size_l>=0)
		This:C1470.banner.borderSize:=$size_l
	End if 
End if 