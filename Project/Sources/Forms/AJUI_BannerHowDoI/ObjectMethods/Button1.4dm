$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		Form:C1466.myBanner.BannerHeight(150)
		Form:C1466.myBanner.BannerWidth(400)
		Form:C1466.myBanner.BannerName("banner")
		Form:C1466.myBanner.BannerType("window")
		If (Form:C1466.myBanner.IsPicture())
			Form:C1466.myBanner.PicturePath(Form:C1466.myBanner.portraitPath)
		Else 
			Form:C1466.myBanner.Message(Form:C1466.myBanner.messageExample)
		End if 
		Form:C1466.myBanner.DrawBanner()
		
		  //FORM GET OBJECTS($_objects) // just for checking the existing objects form
		
End case 
