$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		C_TEXT:C284($currentObjName_t)
		$currentObjName_t:=OBJECT Get name:C1087(Object current:K67:2)
		OBJECT SET VISIBLE:C603(*;$currentObjName_t;False:C215)
		Form:C1466.myBanner.StopSpinner()
End case 