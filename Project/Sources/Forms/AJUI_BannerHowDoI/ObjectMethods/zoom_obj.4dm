$evt:=Form event code
$phoneNumber_fo_ptr:=OBJECT Get pointer(Object named;"phoneNumber_fo")
var $isPicture : Boolean
var $evt : Integer
var $phoneNumber_fo_ptr : Pointer
Case of 
	: ($evt=On Load)
		$phoneNumber_fo_ptr->:="+41 32 342 26 84"
	: ($evt=On Clicked)
		Form.myBanner.BannerHeight(150)
		Form.myBanner.BannerWidth(400)
		Form.myBanner.BannerName("banner")
		Form.myBanner.BannerType("window")
		Form.myBanner.IsPicture(False)
		Form.myBanner.Message($phoneNumber_fo_ptr->)
		Form.myBanner.DrawBanner()
		OBJECT SET VISIBLE(*;"banner";True)
End case 
