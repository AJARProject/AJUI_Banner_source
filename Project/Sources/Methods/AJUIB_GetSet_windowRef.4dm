//%attributes = {"invisible":true}
  // AJUIB_GetSet_windowRef ( $windowRef_l ) -> return
  //
  // $windowRef_l : (longint) window reference
  // return : (text) (return) current window reference
  //
  // Getter/Setter for window reference property.

If (False:C215)
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


C_LONGINT:C283($0;$1;$windowRef_l)

If (Count parameters:C259=0)
	$0:=This:C1470.window.windowRef
Else 
	$windowRef_l:=$1
	This:C1470.window.windowRef:=$windowRef_l
End if 