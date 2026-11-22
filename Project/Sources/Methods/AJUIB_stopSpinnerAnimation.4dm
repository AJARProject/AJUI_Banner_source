//%attributes = {"invisible":true}
  // AJUIB_stopSpinnerAnimation (  ) 
  //
  //
  // This method stop the spinner animation and clear the form object picture linked to the instance

#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.06.19, 14:41:14
	  // ----------------------------------------------------
	  // Method: AJUIB_stopSpinnerAnimation
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
var $pict : Picture
var $obj2Use_t : Text
var $banner_options_obj : Object
var $bannerFormObjExists : Boolean

If (Count parameters=1)
	$banner_options_obj:=$param1
Else 
	$banner_options_obj:=This
End if 

If (Not(Storage.AJUIB_spinner=Null))
	Use (Storage.AJUIB_spinner)
		Storage.AJUIB_spinner.activate:=False
	End use 
End if 

$obj2Use_t:=$banner_options_obj.banner.name

FORM GET OBJECTS($_objectsForm;Form current page+Form inherited)
$bannerFormObjExists:=(Find in array($_objectsForm;$obj2Use_t)>0)
If ($bannerFormObjExists)
	$pict:=$pict*0
	OBJECT Get pointer(Object named;$obj2Use_t)->:=$pict
End if 


