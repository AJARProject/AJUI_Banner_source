$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		Form:C1466.myBanner.BannerType("cornerRibbon")
		  //OBJECT SET VISIBLE(*;"AJUI_Banner_2use2";False)
		  //OBJECT SET VISIBLE(*;"AJUI_cr_2use2";False)
		FORM GOTO PAGE:C247(2)
		
End case 
