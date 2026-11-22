//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerType ( $type_t ) -> return
  //
  // $type_t : (text) type
  // return : (text) (return) current banner type
  //
  // Getter/Setter for the type property of the banner.

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:01:22
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_bannerType
	  // Description
	  // Type availabe : cr | window
	  //
	  // ----------------------------------------------------
End if 

var $type_t : Text

If (Count parameters=0)
	$result:=This.banner.type
Else 
	$type_t:=$param1
	If ($type_t#"")
		This.banner.type:=$type_t
	End if 
End if 