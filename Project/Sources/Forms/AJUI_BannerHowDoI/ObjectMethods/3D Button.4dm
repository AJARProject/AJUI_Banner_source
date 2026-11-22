var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		
		Form.myBanner.IsPicture(True)
		Form.myBanner.PicturePath("Images"+Folder separator+"info.png")
		Form.myBanner.BannerType("window")
		Form.myBanner.DrawBanner()
		
		
End case 