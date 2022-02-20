//%attributes = {"invisible":true,"shared":true,"lang":"en"}
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

$version_t:="1.8.0+Build23"  // Sun, 20 Feb 2022 14:46:16 GMT

$0:="AJUI Banner (Builded on v19 R4) : "+$version_t

