//%attributes = {"invisible":true}
  // AJUIB_GetSet_RibbonTargetName ({ $name_t } ) -> return
  //
  // $name_t : (text) (optional) form object name
  // return : (text) (return) current form object name
  //
  // Getter and Setter to specify an object who will receive the ribbon

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 09.09.19, 13:45:05
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_RibbonTargetName
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $name_t : Text

If (Count parameters=0)
	$result:=This.banner.ribbon.targetName
Else 
	$name_t:=$param1
	This.banner.ribbon.targetName:=$name_t
End if 