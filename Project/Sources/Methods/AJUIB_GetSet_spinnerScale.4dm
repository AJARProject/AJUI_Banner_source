//%attributes = {"invisible":true}
  // AJUIB_GetSet_spinnerScale ( $scale_r ) -> return
  //
  // $scale_r : (real) scale
  // return : (real) (return) return current scale
  //
  // Getter and setter for the scale to apply for the spinner size

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 13.06.19, 15:19:21
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_spinnerScale
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_REAL:C285($0;$1;$scale_r)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.spinner.scale
Else 
	$scale_r:=$1
	If ($scale_r>=0)
		This:C1470.banner.spinner.scale:=$scale_r
	End if 
End if 