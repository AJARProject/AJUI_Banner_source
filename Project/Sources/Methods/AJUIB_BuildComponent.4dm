//%attributes = {}
  // AJUIB_BuildComponent (  )
  //
  //
  // This method generates a version of the component

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 11.02.19, 15:23:23
	  // @private
	  // ----------------------------------------------------
	  // Method: AJUIB_BuildComponent
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

ARRAY TEXT:C222($_list_components;0)

COMPONENT LIST:C1001($_list_components)

$pos:=Find in array:C230($_list_components;"AJUI_Version")

If ($pos>0)
	EXECUTE METHOD:C1007("AJUI_BuildComponent";*;"AJUIB_Info")
End if 