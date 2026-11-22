var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner2.BannerWidth(250)
		Form.myBanner2.Message("cr 2")
		Form.myBanner2.BannerName("cr2")
		Form.myBanner2.BannerType("cornerRibbon")
		Form.myBanner2.BannerBGColor("Blue:40")
		Form.myBanner2.DrawBanner()
		
		
		Form.myBanner.BannerWidth(400)
		Form.myBanner.BannerName("cr1")
		Form.myBanner.Message("Corner Ribbon 1")
		Form.myBanner.BannerType("cornerRibbon")
		Form.myBanner.BannerBGColor("red:40")
		Form.myBanner.DrawBanner()
		
		
End case 
