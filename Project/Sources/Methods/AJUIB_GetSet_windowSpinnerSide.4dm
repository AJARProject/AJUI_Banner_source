//%attributes = {"invisible":true}
  // AJUIB_GetSet_windowSpinnerSide ( $side_t ) -> return
  //
  // $side_t : (text) spinner side
  // return : (text) (return) return current spinner side
  //
  // Getter and setter for the spinner side (only windowSpinner type)

#DECLARE($param1 : Text) -> $result : Text

If (False)
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


var $side_t : Text

If (Count parameters=0)
	$result:=This.banner.spinner.side
Else 
	$side_t:=$param1
	If ($side_t#"")
		This.banner.spinner.side:=$side_t
	End if 
End if 
