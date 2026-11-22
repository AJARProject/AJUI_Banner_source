//%attributes = {"invisible":true}
  // AJUIB_GetSet_windowRef ( $windowRef_l ) -> return
  //
  // $windowRef_l : (longint) window reference
  // return : (text) (return) current window reference
  //
  // Getter/Setter for window reference property.

#DECLARE($param1 : Integer) -> $result : Integer

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:29:59
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_windowRef
	  // Description
	  // It will take the form current window if you enter 0
	  //
	  // ----------------------------------------------------
End if 


var $windowRef_l : Integer

If (Count parameters=0)
	$result:=This.window.windowRef
Else 
	$windowRef_l:=$param1
	This.window.windowRef:=$windowRef_l
End if 