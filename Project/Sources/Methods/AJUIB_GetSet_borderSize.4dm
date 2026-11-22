//%attributes = {"invisible":true}
  // AJUIB_GetSet_borderSize ( $size_l ) -> return
  //
  // $size_l : (longint) size
  // return : (longint) (return) border size
  //
  // Getter/Setter for the border size property of the banner.

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
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

var $size_l : Integer

If (Count parameters=0)
	$result:=This.banner.borderSize
Else 
	$size_l:=$param1
	If ($size_l>=0)
		This.banner.borderSize:=$size_l
	End if 
End if 