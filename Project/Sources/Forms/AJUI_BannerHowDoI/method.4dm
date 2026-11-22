var $evt : Integer
$evt:=Form event code


Case of 
	: ($evt=On Load)
		
		OBJECT Get pointer(Object named;"page")->:=String(FORM Get current page)
		
		Form.myBanner:=New AJUI_Banner 
		Form.myBanner.BannerType("window")
		Form.myBanner.IsPicture(False)
		Form.myBanner.messageExample:="You're welcome"
		Form.myBanner.Message(Form.myBanner.messageExample)
		Form.myBanner.BannerPosition("top-left")
		Form.myBanner.portraitPath:="Images"+Folder separator+"Maurice_portrait2.png"
		Form.myBanner.PicturePath(Form.myBanner.portraitPath)
		Form.myBanner.BannerName("banner")
		FORM GOTO PAGE(1)
		Form.myBanner2:=New AJUI_Banner 
		Form.myBanner2.BannerPosition("top-left")
		
		OBJECT Get pointer(Object named;"btn@")->:=0
		
		Form.Selected_Message_P1:="btn_text"
		Form.Selected_cr_P2:="btn_top-left"
		Form.Selected_Message_P2:="btn_p2_text"
		
		OBJECT Get pointer(Object named;Form.Selected_Message_P1)->:=1
		OBJECT Get pointer(Object named;Form.Selected_cr_P2)->:=1
		OBJECT Get pointer(Object named;Form.Selected_Message_P2)->:=1
		OBJECT Get pointer(Object named;"btn_spinnerRight")->:=1
		
	: ($evt=On Page Change)
		
		OBJECT Get pointer(Object named;"page")->:=String(FORM Get current page)
		
		OBJECT Get pointer(Object named;"btn@")->:=0
		
		If (FORM Get current page=1)
			Form.myBanner.BannerType("window")
			Form.myBanner.IsPicture(False)
			OBJECT Get pointer(Object named;"btn_pict")->:=0
			OBJECT Get pointer(Object named;Form.Selected_Message_P1)->:=1
		Else 
			Form.myBanner.IsPicture(False)
			OBJECT Get pointer(Object named;Form.Selected_cr_P2)->:=1
			OBJECT Get pointer(Object named;Form.Selected_Message_P2)->:=1
		End if 
		
	: ($evt=On Unload)
		Form.myBanner.StopSpinner()
		
End case 
