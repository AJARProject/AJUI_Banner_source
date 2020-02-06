//%attributes = {"invisible":true}
  // AJUIB_stopSpinnerAnimation (  ) 
  //
  //
  // This method stop the spinner animation and clear the form object picture linked to the instance

If (False:C215)
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
C_PICTURE:C286($pict)
C_TEXT:C284($obj2Use_t)
C_OBJECT:C1216($1;$banner_options_obj)

If (Count parameters:C259=1)
	$banner_options_obj:=$1
Else 
	$banner_options_obj:=This:C1470
End if 

If (Not:C34(Storage:C1525.AJUIB_spinner=Null:C1517))
	Use (Storage:C1525.AJUIB_spinner)
		Storage:C1525.AJUIB_spinner.activate:=False:C215
	End use 
End if 

$obj2Use_t:=$banner_options_obj.banner.name

FORM GET OBJECTS:C898($_objectsForm;Form current page:K67:6+Form inherited:K67:8)
$bannerFormObjExists:=(Find in array:C230($_objectsForm;$obj2Use_t)>0)
If ($bannerFormObjExists)
	$pict:=$pict*0
	OBJECT Get pointer:C1124(Object named:K67:5;$obj2Use_t)->:=$pict
End if 


