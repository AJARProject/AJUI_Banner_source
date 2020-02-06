//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerType ( $type_t ) -> return
  //
  // $type_t : (text) type
  // return : (text) (return) current banner type
  //
  // Getter/Setter for the type property of the banner.

If (False:C215)
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

C_TEXT:C284($0;$1;$type_t)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.type
Else 
	$type_t:=$1
	If ($type_t#"")
		This:C1470.banner.type:=$type_t
	End if 
End if 