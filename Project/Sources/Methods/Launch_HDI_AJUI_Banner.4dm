//%attributes = {"invisible":true,"shared":true}


#DECLARE($param1 : Boolean)

var $winRef_l; $refProc : Integer
If (Count parameters=0)
	$refProc:=New process("Launch_HDI_AJUI_Banner";0;"HDI AJUI Banner";True)
Else 
	$winRef_l:=Open form window("AJUI_BannerHowDoI";Plain form window;Horizontally centered;Vertically centered)
	DIALOG("AJUI_BannerHowDoI")
	CLOSE WINDOW($winRef_l)
End if 