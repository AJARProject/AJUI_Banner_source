var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		
		Form.myBanner.BannerPosition("top-right")
		Form.myBanner.Message("Top-right")
		Form.myBanner2.BannerPosition("top-right")
		Form.myBanner2.Message("Top-right")
		Form.Selected_cr_P2:=OBJECT Get name(Object current)
		
End case 