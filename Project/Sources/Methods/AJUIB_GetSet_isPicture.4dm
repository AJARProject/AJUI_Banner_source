//%attributes = {"invisible":true}
  // AJUIB_GetSet_isPicture ( $isPicture_b ) -> return
  //
  // $isPicture_b : (boolean) show picture ?
  // return : (boolean) (return) picture used or not
  //
  // Getter/Setter to use a picture instead of the text in the banner (banner : window type only).

#DECLARE($param1 : Boolean) -> $result : Boolean

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:08:26
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_isPicture
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $isPicture_b : Boolean

If (Count parameters=0)
	$result:=This.picture.isPicture
Else 
	$isPicture_b:=$param1
	This.picture.isPicture:=$isPicture_b
End if 