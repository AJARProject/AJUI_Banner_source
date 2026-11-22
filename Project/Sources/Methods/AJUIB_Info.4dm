//%attributes = {"invisible":true,"shared":true,"lang":"en"}
// AJUIB_Info( ) -> return
//
// return : (text) (return) version
//
// Show the version info of the component

#DECLARE() -> $result : Text

If (False)
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


var $version_t : Text

$version_t:="1.9.0"  // 22 Nov 2026 (4D 21 R4)

$result:="AJUI_Banner (v21 R4) : "+$version_t

