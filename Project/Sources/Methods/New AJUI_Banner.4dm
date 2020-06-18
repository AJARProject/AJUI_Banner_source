//%attributes = {"invisible":true,"shared":true}
  // New Ajui_Banner ( ) -> return
  //
  // return : (object) (return) banner object
  //
  // This method creates an instance of the banner object with his default properties values and formulas

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:40:26
	  // ----------------------------------------------------
	  // Method: New Ajui_Banner
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 
C_OBJECT:C1216($banner_options_obj)

$banner_options_obj:=New object:C1471


  //init properties
AJUIB_initAttributes ($banner_options_obj)

  //init formulas
AJUIB_initFormulas ($banner_options_obj)

$0:=$banner_options_obj