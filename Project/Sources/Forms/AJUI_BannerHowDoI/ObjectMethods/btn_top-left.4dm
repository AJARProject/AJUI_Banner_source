$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		
		Form:C1466.myBanner.BannerPosition("top-left")
		Form:C1466.myBanner.Message("Top-left")
		Form:C1466.myBanner2.BannerPosition("top-left")
		Form:C1466.myBanner2.Message("Top-left")
		Form:C1466.Selected_cr_P2:=OBJECT Get name:C1087(Object current:K67:2)
		
End case 