//%attributes = {"shared":true}
C_BOOLEAN:C305($1)


If (Count parameters:C259=0)
	$refProc:=New process:C317("Launch_HDI_AJUI_Banner";0;"HDI AJUI Banner";True:C214)
Else 
	C_LONGINT:C283($winRef_l)
	$winRef_l:=Open form window:C675("AJUI_BannerHowDoI";Plain form window:K39:10;Horizontally centered:K39:1;Vertically centered:K39:4)
	DIALOG:C40("AJUI_BannerHowDoI")
	CLOSE WINDOW:C154($winRef_l)
End if 