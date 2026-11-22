var $currentObjName_t : Text
var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		$currentObjName_t:=OBJECT Get name(Object current)
		OBJECT SET VISIBLE(*;$currentObjName_t;False)
		Form.myBanner.StopSpinner()
End case 