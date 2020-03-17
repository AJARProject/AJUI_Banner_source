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

$version_t:="1.7.1-Build19"  // Tue, 17 Mar 2020 09:55:21 GMT

$0:="AJUI Banner (v18) : "+$version_t

