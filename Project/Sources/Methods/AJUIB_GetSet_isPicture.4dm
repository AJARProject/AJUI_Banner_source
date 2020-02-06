//%attributes = {"invisible":true}
  // AJUIB_GetSet_isPicture ( $isPicture_b ) -> return
  //
  // $isPicture_b : (boolean) show picture ?
  // return : (boolean) (return) picture used or not
  //
  // Getter/Setter to use a picture instead of the text in the banner (banner : window type only).

If (False:C215)
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

C_BOOLEAN:C305($0;$1;$isPicture_b)

If (Count parameters:C259=0)
	$0:=This:C1470.picture.isPicture
Else 
	$isPicture_b:=$1
	This:C1470.picture.isPicture:=$isPicture_b
End if 