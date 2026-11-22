var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Clicked)
		
		Form.myBanner.IsPicture(False)
		Form.myBanner.Message("You're welcome")
		Form.Selected_Message_P2:=OBJECT Get name(Object current)
		
End case 