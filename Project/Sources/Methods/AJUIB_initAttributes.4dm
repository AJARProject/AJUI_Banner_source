//%attributes = {"invisible":true}
  // AJUIB_initAttributes ( $banner_options_obj ) 
  //
  // $banner_options_obj : (object) banner object
  //
  // This method init the properties for a New AJUI_bannes
#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 18.06.20, 13:27:33
	  // ----------------------------------------------------
	  // Method: AJUIB_initAttributes
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 


var $banner_options_obj : Object

  //init object
$banner_options_obj:=$param1

  //init window properties
If ($banner_options_obj.window=Null)
	$banner_options_obj.window:=New object
End if 
$banner_options_obj.window.windowRef:=0
$banner_options_obj.window.windowBGColor:="black:50"

  //init banner properties
If ($banner_options_obj.banner=Null)
	$banner_options_obj.banner:=New object
End if 
$banner_options_obj.banner.type:="cornerRibbon"  // cornerRibbon | window | spinner | windowSpinner
$banner_options_obj.banner.bannerBGColor:="black:50"
$banner_options_obj.banner.borderColor:="darkgray"
$banner_options_obj.banner.borderSize:=0
$banner_options_obj.banner.bannerHeight:=150
$banner_options_obj.banner.bannerWidth:=400
$banner_options_obj.banner.cornerRadius:=15
$banner_options_obj.banner.position:="bottom-right"  // top-left | top-right | bottom-left | bottom-right


If ($banner_options_obj.banner.spinner=Null)
	$banner_options_obj.banner.spinner:=New object()
End if 

$banner_options_obj.banner.spinner.windowHeight:=0
$banner_options_obj.banner.spinner.windowWidht:=0
$banner_options_obj.banner.spinner.windowRef:=0
$banner_options_obj.banner.spinner.scale:=0.5
$banner_options_obj.banner.spinner.side:="right"  //left or right side, only window spinner type

  //init picture properties
If ($banner_options_obj.picture=Null)
	$banner_options_obj.picture:=New object
End if 
$banner_options_obj.picture.isPicture:=False
$banner_options_obj.picture.picturePath:=""


  //init text properties
If ($banner_options_obj.text=Null)
	$banner_options_obj.text:=New object
End if 
$banner_options_obj.text.message:="AJUI Banner"
$banner_options_obj.text.textColor:="White"
$banner_options_obj.text.textFontName:="Arial"
$banner_options_obj.text.textFontSize:=32
$banner_options_obj.text.textFontWeight:="bold"  //normal | bold | bolder | lighter | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | inherit
$banner_options_obj.text.textFontStyle:="normal"  // normal | italic | oblique | inherit

If ($banner_options_obj.banner.ribbon=Null)
	$banner_options_obj.banner.ribbon:=New object()
End if 

  //ribbon target properties
$banner_options_obj.banner.ribbon.targetName:=""
$banner_options_obj.banner.ribbon.targetCoordinates:=New object("left";0;"top";0;"right";0;"bottom";0)

