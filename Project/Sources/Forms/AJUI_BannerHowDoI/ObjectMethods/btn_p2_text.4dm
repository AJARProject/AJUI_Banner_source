$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		
		Form:C1466.myBanner.IsPicture(False:C215)
		Form:C1466.myBanner.Message("You're welcome")
		Form:C1466.Selected_Message_P2:=OBJECT Get name:C1087(Object current:K67:2)
		
End case 