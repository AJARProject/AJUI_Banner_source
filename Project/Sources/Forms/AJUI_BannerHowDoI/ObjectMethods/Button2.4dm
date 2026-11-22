var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner.BannerType("cornerRibbon")
		  //OBJECT SET VISIBLE(*;"AJUI_Banner_2use2";False)
		  //OBJECT SET VISIBLE(*;"AJUI_cr_2use2";False)
		FORM GOTO PAGE(2)
		
End case 
