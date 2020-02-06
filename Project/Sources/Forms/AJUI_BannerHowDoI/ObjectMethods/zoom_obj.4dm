$evt:=Form event code:C388
$phoneNumber_fo_ptr:=OBJECT Get pointer:C1124(Object named:K67:5;"phoneNumber_fo")
C_BOOLEAN:C305($isPicture)
Case of 
	: ($evt=On Load:K2:1)
		$phoneNumber_fo_ptr->:="+41 32 342 26 84"
	: ($evt=On Clicked:K2:4)
		Form:C1466.myBanner.BannerHeight(150)
		Form:C1466.myBanner.BannerWidth(400)
		Form:C1466.myBanner.BannerName("banner")
		Form:C1466.myBanner.BannerType("window")
		Form:C1466.myBanner.IsPicture(False:C215)
		Form:C1466.myBanner.Message($phoneNumber_fo_ptr->)
		Form:C1466.myBanner.DrawBanner()
		OBJECT SET VISIBLE:C603(*;"banner";True:C214)
End case 
