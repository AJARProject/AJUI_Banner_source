//%attributes = {"shared":true,"lang":"en"}
  // AJUIB_Info( ) -> return
  //
  // return : (text) (return) version
  //
  // Show the version info of the component

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 17.06.19, 15:24:13
	  // ----------------------------------------------------
	  // Method: AJUIB_Info
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


C_TEXT:C284($0)

$version_t:="1.7.0-Build18"  // Mon, 20 Jan 2020 13:51:28 GMT

$0:="AJUI Banner (v18) : "+$version_t

