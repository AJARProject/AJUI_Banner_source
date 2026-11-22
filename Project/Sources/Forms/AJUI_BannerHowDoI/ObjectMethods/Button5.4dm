var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner.BannerHeight(150)
		Form.myBanner.BannerWidth(400)
		Form.myBanner.BannerName("banner2")
		Form.myBanner.Message("Work in progress")
		Form.myBanner.BannerType("window")
		Form.myBanner.DrawBanner()
		
End case 
