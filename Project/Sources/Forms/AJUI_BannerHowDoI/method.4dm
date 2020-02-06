$evt:=Form event code:C388


Case of 
	: ($evt=On Load:K2:1)
		
		OBJECT Get pointer:C1124(Object named:K67:5;"page")->:=String:C10(FORM Get current page:C276)
		
		Form:C1466.myBanner:=New AJUI_Banner 
		Form:C1466.myBanner.BannerType("window")
		Form:C1466.myBanner.IsPicture(False:C215)
		Form:C1466.myBanner.messageExample:="You're welcome"
		Form:C1466.myBanner.Message(Form:C1466.myBanner.messageExample)
		Form:C1466.myBanner.BannerPosition("top-left")
		Form:C1466.myBanner.portraitPath:="Images"+Folder separator:K24:12+"Maurice_portrait2.png"
		Form:C1466.myBanner.PicturePath(Form:C1466.myBanner.portraitPath)
		Form:C1466.myBanner.BannerName("banner")
		FORM GOTO PAGE:C247(1)
		Form:C1466.myBanner2:=New AJUI_Banner 
		Form:C1466.myBanner2.BannerPosition("top-left")
		
		OBJECT Get pointer:C1124(Object named:K67:5;"btn@")->:=0
		
		Form:C1466.Selected_Message_P1:="btn_text"
		Form:C1466.Selected_cr_P2:="btn_top-left"
		Form:C1466.Selected_Message_P2:="btn_p2_text"
		
		OBJECT Get pointer:C1124(Object named:K67:5;Form:C1466.Selected_Message_P1)->:=1
		OBJECT Get pointer:C1124(Object named:K67:5;Form:C1466.Selected_cr_P2)->:=1
		OBJECT Get pointer:C1124(Object named:K67:5;Form:C1466.Selected_Message_P2)->:=1
		OBJECT Get pointer:C1124(Object named:K67:5;"btn_spinnerRight")->:=1
		
	: ($evt=On Page Change:K2:54)
		
		OBJECT Get pointer:C1124(Object named:K67:5;"page")->:=String:C10(FORM Get current page:C276)
		
		OBJECT Get pointer:C1124(Object named:K67:5;"btn@")->:=0
		
		If (FORM Get current page:C276=1)
			Form:C1466.myBanner.BannerType("window")
			Form:C1466.myBanner.IsPicture(False:C215)
			OBJECT Get pointer:C1124(Object named:K67:5;"btn_pict")->:=0
			OBJECT Get pointer:C1124(Object named:K67:5;Form:C1466.Selected_Message_P1)->:=1
		Else 
			Form:C1466.myBanner.IsPicture(False:C215)
			OBJECT Get pointer:C1124(Object named:K67:5;Form:C1466.Selected_cr_P2)->:=1
			OBJECT Get pointer:C1124(Object named:K67:5;Form:C1466.Selected_Message_P2)->:=1
		End if 
		
	: ($evt=On Unload:K2:2)
		Form:C1466.myBanner.StopSpinner()
		
End case 
