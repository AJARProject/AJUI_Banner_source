//%attributes = {"invisible":true}
  // AJUIB_spinnerAnimation ( $banner_options_obj ) 
  //
  // $banner_options_obj : (object) instance
  //
  // This method launch the drawSpinner method and handle the spinner animation

#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.06.19, 11:27:26
	  // ----------------------------------------------------
	  // Method: AJUIB_spinnerAnimation
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $banner_options_obj : Object
var $refWin : Integer
var $spinner_pict : Picture

$banner_options_obj:=$param1
$refWin:=$banner_options_obj.banner.spinner.windowRef

  //setup spinner
CALL FORM($refWin;"AJUIB_drawSpinner";$banner_options_obj;True)


  //animate spinner
While (Storage.AJUIB_spinner.activate)
	CALL FORM($refWin;"AJUIB_drawSpinner";$banner_options_obj;False)
	DELAY PROCESS(Current process;5)
End while 

