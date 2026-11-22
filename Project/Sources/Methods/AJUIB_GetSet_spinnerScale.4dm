//%attributes = {"invisible":true}
  // AJUIB_GetSet_spinnerScale ( $scale_r ) -> return
  //
  // $scale_r : (real) scale
  // return : (real) (return) return current scale
  //
  // Getter and setter for the scale to apply for the spinner size

#DECLARE($param1 : Real) -> $result : Real

If (False)
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

var $scale_r : Real

If (Count parameters=0)
	$result:=This.banner.spinner.scale
Else 
	$scale_r:=$param1
	If ($scale_r>=0)
		This.banner.spinner.scale:=$scale_r
	End if 
End if 