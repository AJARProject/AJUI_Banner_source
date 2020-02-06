$evt:=Form event code:C388


Case of 
	: ($evt=On Clicked:K2:4)
		Form:C1466.myBanner.BannerBGColor("black:50")
		OBJECT SET VISIBLE:C603(*;"cr1";False:C215)
		OBJECT SET VISIBLE:C603(*;"cr2";False:C215)
		OBJECT SET VISIBLE:C603(*;"banner";False:C215)
		FORM GOTO PAGE:C247(1)
		
End case 
