$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		Form:C1466.myBanner2.BannerWidth(250)
		Form:C1466.myBanner2.BannerName("cr2")
		Form:C1466.myBanner2.Message("cr 2")
		Form:C1466.myBanner2.BannerType("cornerRibbon")
		Form:C1466.myBanner2.BannerBGColor("Blue:40")
		Form:C1466.myBanner2.DrawBanner()
		
End case 
