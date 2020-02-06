//%attributes = {"invisible":true}
  // AJUIB_spinnerAnimation ( $banner_options_obj ) 
  //
  // $banner_options_obj : (object) instance
  //
  // This method launch the drawSpinner method and handle the spinner animation

If (False:C215)
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

C_OBJECT:C1216($1;$banner_options_obj)
C_LONGINT:C283($refWin)
C_PICTURE:C286($spinner_pict)

$banner_options_obj:=$1
$refWin:=$banner_options_obj.banner.spinner.windowRef

  //setup spinner
CALL FORM:C1391($refWin;"AJUIB_drawSpinner";$banner_options_obj;True:C214)


  //animate spinner
While (Storage:C1525.AJUIB_spinner.activate)
	CALL FORM:C1391($refWin;"AJUIB_drawSpinner";$banner_options_obj;False:C215)
	DELAY PROCESS:C323(Current process:C322;5)
End while 

