$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		
		Form:C1466.myBanner.IsPicture(True:C214)
		Form:C1466.myBanner.PicturePath("Images"+Folder separator:K24:12+"info.png")
		Form:C1466.myBanner.BannerType("window")
		Form:C1466.myBanner.DrawBanner()
		
		
End case 