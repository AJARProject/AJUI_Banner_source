var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner.BannerHeight(150)
		Form.myBanner.BannerWidth(400)
		Form.myBanner.BannerName("banner")
		Form.myBanner.BannerType("spinner")
		Form.myBanner.DrawBanner()
		
		
		
End case 
