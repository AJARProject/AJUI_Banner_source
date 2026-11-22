var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		
		Form.myBanner.BannerPosition("bottom-left")
		Form.myBanner.Message("Bottom-left")
		Form.myBanner2.BannerPosition("bottom-left")
		Form.myBanner2.Message("Bottom-left")
		Form.Selected_cr_P2:=OBJECT Get name(Object current)
		
End case 