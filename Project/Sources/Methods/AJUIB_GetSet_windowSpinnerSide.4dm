//%attributes = {"invisible":true}
  // AJUIB_GetSet_windowSpinnerSide ( $side_t ) -> return
  //
  // $side_t : (text) spinner side
  // return : (text) (return) return current spinner side
  //
  // Getter and setter for the spinner side (only windowSpinner type)

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 17.06.19, 10:18:17
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_windowSpinnerSide
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($0;$1;$side_t)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.spinner.side
Else 
	$side_t:=$1
	If ($side_t#"")
		This:C1470.banner.spinner.side:=$side_t
	End if 
End if 
