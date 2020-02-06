//%attributes = {"invisible":true}
  // AJUIB_hideBanner (  ) 
  //
  //
  // Hide the banner linked to the instance name

If (False:C215)
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

C_TEXT:C284($obj2Use_t)
C_OBJECT:C1216($banner_options_obj)

$banner_options_obj:=This:C1470
$obj2Use_t:=$banner_options_obj.banner.name

OBJECT SET VISIBLE:C603(*;$obj2Use_t;False:C215)
