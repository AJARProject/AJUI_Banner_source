$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		Form:C1466.myBanner.BannerHeight(150)
		Form:C1466.myBanner.BannerWidth(400)
		Form:C1466.myBanner.BannerName("banner2")
		Form:C1466.myBanner.Message("Work in progress")
		Form:C1466.myBanner.BannerType("window")
		Form:C1466.myBanner.DrawBanner()
		
End case 
