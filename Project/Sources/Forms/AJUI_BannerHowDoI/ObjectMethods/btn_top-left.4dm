var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		
		Form.myBanner.BannerPosition("top-left")
		Form.myBanner.Message("Top-left")
		Form.myBanner2.BannerPosition("top-left")
		Form.myBanner2.Message("Top-left")
		Form.Selected_cr_P2:=OBJECT Get name(Object current)
		
End case 