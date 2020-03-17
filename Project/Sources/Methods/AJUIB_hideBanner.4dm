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

C_OBJECT:C1216($1;$banner_options_obj)
C_TEXT:C284($obj2Use_t)

$banner_options_obj:=This:C1470

If (Count parameters:C259=0)
	CALL FORM:C1391(Current form window:C827;Current method name:C684;$banner_options_obj)
Else 
	$banner_options_obj:=$1
	$obj2Use_t:=$banner_options_obj.banner.name
	OBJECT SET VISIBLE:C603(*;$obj2Use_t;False:C215)
End if 