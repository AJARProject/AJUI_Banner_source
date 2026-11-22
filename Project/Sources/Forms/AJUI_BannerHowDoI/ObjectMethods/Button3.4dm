var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner.BannerBGColor("black:50")
		OBJECT SET VISIBLE(*;"cr1";False)
		OBJECT SET VISIBLE(*;"cr2";False)
		OBJECT SET VISIBLE(*;"banner";False)
		FORM GOTO PAGE(1)
		
End case 
