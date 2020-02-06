//%attributes = {"invisible":true}
  // AJUIB_GetSet_RibbonTargetName ({ $name_t } ) -> return
  //
  // $name_t : (text) (optional) form object name
  // return : (text) (return) current form object name
  //
  // Getter and Setter to specify an object who will receive the ribbon

If (False:C215)
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

C_TEXT:C284($0;$1;$name_t)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.ribbon.targetName
Else 
	$name_t:=$1
	This:C1470.banner.ribbon.targetName:=$name_t
End if 