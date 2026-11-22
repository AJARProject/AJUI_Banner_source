var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner.BannerWidth(400)
		Form.myBanner.BannerName("cr1")
		Form.myBanner.Message("Corner Ribbon 1")
		Form.myBanner.BannerType("cornerRibbon")
		Form.myBanner.BannerBGColor("red:40")
		Form.myBanner.DrawBanner()
		
End case 


