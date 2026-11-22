var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner.BannerHeight(150)
		Form.myBanner.BannerWidth(400)
		Form.myBanner.BannerName("windowSpinnerBanner")
		Form.myBanner.BannerType("windowSpinner")
		Form.myBanner.DrawBanner()
		
		
		
End case 
