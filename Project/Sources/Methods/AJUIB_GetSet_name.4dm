//%attributes = {"invisible":true}
  // AJUIB_GetSet_name ( $name_t ) -> return
  //
  // $name_t : (text) name
  // return : (text) (return) name in the banner
  //
  // Getter/Setter for the name property of the banner.


#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Maurice Inzirillo
	  // Date and time: 25.04.19, 08:12:15
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_name
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $name_t : Text

If (Count parameters=0)
	$result:=This.banner.name
Else 
	$name_t:=$param1
	If ($name_t#"")
		This.banner.name:=$name_t
	End if 
End if 