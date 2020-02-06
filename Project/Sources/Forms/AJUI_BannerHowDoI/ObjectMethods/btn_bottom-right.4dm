$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		
		Form:C1466.myBanner.BannerPosition("bottom-right")
		Form:C1466.myBanner.Message("Bottom-right")
		Form:C1466.myBanner2.BannerPosition("bottom-right")
		Form:C1466.myBanner2.Message("Bottom-right")
		Form:C1466.Selected_cr_P2:=OBJECT Get name:C1087(Object current:K67:2)
		
End case 