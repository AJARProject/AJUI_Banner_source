//%attributes = {"invisible":true}
  // AJUIB_windowBanner ( $banner_options_obj; $heightSVG_l; $widhtSVG_l) -> return
  //
  // $banner_options_obj : (object) description
  // $heightSVG_l : (longint) window height
  // $widhtSVG_l : (longint) window width
  // return : (picture) (return) picture of the window banner
  //
  // This method draw the window banner based on the properties of the banner object

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:37:28
	  // ----------------------------------------------------
	  // Method: AJUIB_windowBanner
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_OBJECT:C1216($1;$banner_options_obj)
C_PICTURE:C286($0;$pict;$content_pict)
C_LONGINT:C283($2;$heightSVG_l;$3;$widhtSVG_l)
C_LONGINT:C283($windowTop_l;$windowLeft_l;$windowBottom_l;$windowRight_l)
C_LONGINT:C283($bannerY_l;$bannerX_l;$bannerHeight_l;$bannerWidth_l)
C_LONGINT:C283($textFontSize_l;$textAreaX_l;$textAreaY_l;$textAreaHeight_l;$textAreaWidth)
C_LONGINT:C283($heighPict_l;$widhtPict_l)
C_TEXT:C284($textFontColor_t;$textFontName_t;$message_t;$windowBGColor;$textFontWeight_t;$textFontStyle_t)

$banner_options_obj:=$1
$heightSVG_l:=$2
$widhtSVG_l:=$3

  //get text options
$message_t:=$banner_options_obj.text.message
$textFontColor_t:=$banner_options_obj.text.textColor
$textFontName_t:=$banner_options_obj.text.textFontName
$textFontSize_l:=$banner_options_obj.text.textFontSize
$textFontWeight_t:=$banner_options_obj.text.textFontWeight
$textFontStyle_t:=$banner_options_obj.text.textFontStyle

  //get banner options
$windowBGColor:=$banner_options_obj.window.windowBGColor
$bannerBGColor:=$banner_options_obj.banner.bannerBGColor
$bannerHeight_l:=$banner_options_obj.banner.bannerHeight
$bannerWidth_l:=$banner_options_obj.banner.bannerWidth
$borderColor:=$banner_options_obj.banner.borderColor
$borderSize:=$banner_options_obj.banner.borderSize
$cornerRadius:=$banner_options_obj.banner.cornerRadius
$paddingH:=0
$paddingV:=($bannerHeight_l-($textFontSize_l*1.25))/2


  //draw SVG
$svgRef_t:=SVG_New ($widhtSVG_l;$heightSVG_l)

$rectWindowRef_t:=SVG_New_rect ($svgRef_t;0;0;$widhtSVG_l;$heightSVG_l;0;0;"none";$windowBGColor;0)



If ($banner_options_obj.picture.isPicture)  //use picture instead of the text
	$filepath:=Get 4D folder:C485(Current resources folder:K5:16)+$banner_options_obj.picture.picturePath
	READ PICTURE FILE:C678($filepath;$content_pict)
	PICTURE PROPERTIES:C457($content_pict;$heighPict_l;$widhtPict_l)
	
	$bannerX_l:=($widhtSVG_l/2)-($widhtPict_l/2)
	$bannerY_l:=($heightSVG_l/2)-($heighPict_l/2)
	
	  //image can't bigger than the window
	If ($bannerX_l<0)
		$bannerX_l:=0
		$widhtPict_l:=$widhtSVG_l
	End if 
	
	If ($bannerY_l<0)
		$bannerY_l:=0
		$heighPict_l:=$heightSVG_l
	End if 
	
	$pictureRef_t:=SVG_New_image ($svgRef_t;"#"+$banner_options_obj.picture.picturePath;$bannerX_l;$bannerY_l;$widhtPict_l;$heighPict_l)
	
Else 
	
	  //calculate banner coordinates
	$bannerX_l:=($widhtSVG_l/2)-($bannerWidth_l/2)
	$bannerY_l:=($heightSVG_l/2)-($bannerHeight_l/2)
	
	
	  //calculate text area
	$textAreaX_l:=$bannerX_l+$paddingH
	$textAreaY_l:=$bannerY_l+$paddingV
	$textAreaHeight_l:=$bannerHeight_l-$paddingV
	$textAreaWidth:=$bannerWidth_l-$paddingH
	
	  //style definition
	$style_definition:="{font-size:"+String:C10($textFontSize_l)+";fill:"+$textFontColor_t+";font-family:"+$textFontName_t+";font-style:"+$textFontStyle_t+";font-weight:"+$textFontWeight_t+";text-align:center}"
	
	
	$rectBannerRef_t:=SVG_New_rect ($svgRef_t;$bannerX_l;$bannerY_l;$bannerWidth_l;$bannerHeight_l;$cornerRadius;$cornerRadius;$borderColor;$bannerBGColor;$borderSize)
	
	$textRef_t:=SVG_New_textArea ($svgRef_t;$message_t;$textAreaX_l;$textAreaY_l;$textAreaWidth;$textAreaHeight_l;$style_definition)
	
End if 


If (False:C215)
	SVGTool_SHOW_IN_VIEWER ($svgRef_t)
End if 

SVG EXPORT TO PICTURE:C1017($svgRef_t;$pict)
SVG_CLEAR ($svgRef_t)

$0:=$pict