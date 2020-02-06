//%attributes = {"invisible":true}
  // AJUIB_GetSet_name ( $name_t ) -> return
  //
  // $name_t : (text) name
  // return : (text) (return) name in the banner
  //
  // Getter/Setter for the name property of the banner.


If (False:C215)
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

C_TEXT:C284($0;$1;$name_t)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.name
Else 
	$name_t:=$1
	If ($name_t#"")
		This:C1470.banner.name:=$name_t
	End if 
End if 