var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		
		Form.myBanner.BannerPosition("bottom-right")
		Form.myBanner.Message("Bottom-right")
		Form.myBanner2.BannerPosition("bottom-right")
		Form.myBanner2.Message("Bottom-right")
		Form.Selected_cr_P2:=OBJECT Get name(Object current)
		
End case 