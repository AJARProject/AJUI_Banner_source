var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		Form.myBanner.PicturePath("Images"+Folder separator+"infop2.png")
		Form.myBanner.IsPicture(True)
		Form.Selected_Message_P2:=OBJECT Get name(Object current)
		
End case 