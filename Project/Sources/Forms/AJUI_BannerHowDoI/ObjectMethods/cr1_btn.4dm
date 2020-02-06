$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		Form:C1466.myBanner.BannerWidth(400)
		Form:C1466.myBanner.BannerName("cr1")
		Form:C1466.myBanner.Message("Corner Ribbon 1")
		Form:C1466.myBanner.BannerType("cornerRibbon")
		Form:C1466.myBanner.BannerBGColor("red:40")
		Form:C1466.myBanner.DrawBanner()
		
End case 


