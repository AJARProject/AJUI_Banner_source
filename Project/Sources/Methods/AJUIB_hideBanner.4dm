//%attributes = {"invisible":true}
  // AJUIB_hideBanner (  ) 
  //
  //
  // Hide the banner linked to the instance name

#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 17.06.19, 10:05:40
	  // ----------------------------------------------------
	  // Method: AJUIB_hideBanner
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $banner_options_obj : Object
var $obj2Use_t : Text

$banner_options_obj:=This

If (Count parameters=0)
	CALL FORM(Current form window;Current method name;$banner_options_obj)
Else 
	$banner_options_obj:=$param1
	$obj2Use_t:=$banner_options_obj.banner.name
	OBJECT SET VISIBLE(*;$obj2Use_t;False)
End if 