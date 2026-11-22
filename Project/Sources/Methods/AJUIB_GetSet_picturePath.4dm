//%attributes = {"invisible":true}
  // AJUIB_GetSet_picturePath ( $picturePath_t ) -> return
  //
  // $picturePath_t : (text) filepath
  // return : (text) (return) current picture filepath
  //
  // Getter/Setter for the path of the picture file in the resources folder.

#DECLARE($param1 : Text) -> $result : Text

If (False)
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

var $picturePath_t : Text

If (Count parameters=0)
	$result:=This.picture.picturePath
Else 
	$picturePath_t:=$param1
	If ($picturePath_t#"")
		This.picture.picturePath:=$picturePath_t
	End if 
End if 
