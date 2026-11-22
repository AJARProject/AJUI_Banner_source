var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner.BannerHeight(150)
		Form.myBanner.BannerWidth(400)
		Form.myBanner.BannerName("banner")
		Form.myBanner.BannerType("window")
		If (Form.myBanner.IsPicture())
			Form.myBanner.PicturePath(Form.myBanner.portraitPath)
		Else 
			Form.myBanner.Message(Form.myBanner.messageExample)
		End if 
		Form.myBanner.DrawBanner()
		
		  //FORM GET OBJECTS($_objects) // just for checking the existing objects form
		
End case 
