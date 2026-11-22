var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		
		Form.myBanner.IsPicture(True)
		Form.myBanner.PicturePath(Form.myBanner.portraitPath)
		
End case 