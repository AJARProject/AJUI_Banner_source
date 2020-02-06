//%attributes = {"invisible":true}
  // AJUIB_GetSet_windowBGColor ( $BGColor_t ) -> return
  //
  // $BGColor_t : (text) color
  // return : (text) (return) current window background color
  //
  // Getter/Setter for the window background color property of the banner. (banner window type only)

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:28:15
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_windowBGColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$BGColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.window.windowBGColor
Else 
	$BGColor_t:=$1
	If ($BGColor_t#"")
		This:C1470.window.windowBGColor:=$BGColor_t
	End if 
End if 