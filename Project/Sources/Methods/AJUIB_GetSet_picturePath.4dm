//%attributes = {"invisible":true}
  // AJUIB_GetSet_picturePath ( $picturePath_t ) -> return
  //
  // $picturePath_t : (text) filepath
  // return : (text) (return) current picture filepath
  //
  // Getter/Setter for the path of the picture file in the resources folder.

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:15:22
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_picturePath
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$picturePath_t)

If (Count parameters:C259=0)
	$0:=This:C1470.picture.picturePath
Else 
	$picturePath_t:=$1
	If ($picturePath_t#"")
		This:C1470.picture.picturePath:=$picturePath_t
	End if 
End if 
