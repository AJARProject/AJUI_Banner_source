//%attributes = {"invisible":true}
  // AJUIB_crBanner ( $banner_options_obj ) -> return
  //
  // $banner_options_obj : (object) banner object
  // return : (picture) picture of the cr banner
  //
  // This method draw the cr banner based on the properties of the banner object

#DECLARE($param1 : Object) -> $result : Picture

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 13:48:08
	  // ----------------------------------------------------
	  // Method: AJUIB_crBanner
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $banner_options_obj : Object
var $pict : Picture
var $textFontSize_l; $textAreaHeight_l; $textAreaWidth; $difference_l; $rawBannerHeight_l; $rawbannerWidth_l; $cornerRadius_l; $bannerWidth_l; $bannerHeight_l; $borderSize; $paddingH; $paddingV : Integer
var $textFontColor_t; $textFontName_t; $message_t; $textFontWeight_t; $textFontStyle_t; $bannerBGColor; $borderColor; $svgRef_t; $svgGraphicRef_t; $style_definition; $textRef_t : Text
var $svgPrevRelativeCoordinate_b : Boolean

$banner_options_obj:=$param1

If ($banner_options_obj.banner.position="top-left") | ($banner_options_obj.banner.position="top-right") | ($banner_options_obj.banner.position="bottom-left") | ($banner_options_obj.banner.position="bottom-right")
	  //get text options
	$message_t:=$banner_options_obj.text.message
	$textFontColor_t:=$banner_options_obj.text.textColor
	$textFontName_t:=$banner_options_obj.text.textFontName
	$textFontSize_l:=$banner_options_obj.text.textFontSize
	$textFontWeight_t:=$banner_options_obj.text.textFontWeight
	$textFontStyle_t:=$banner_options_obj.text.textFontStyle
	
	  //get banner options
	$bannerBGColor:=$banner_options_obj.banner.bannerBGColor
	$rawBannerHeight_l:=$banner_options_obj.banner.bannerHeight
	$rawbannerWidth_l:=$banner_options_obj.banner.bannerWidth
	$borderColor:=$banner_options_obj.banner.borderColor
	$borderSize:=$banner_options_obj.banner.borderSize
	$cornerRadius_l:=$banner_options_obj.banner.cornerRadius
	$paddingH:=0
	$paddingV:=($rawBannerHeight_l-($textFontSize_l*1.25))/2
	
	  //calculate text area
	$textAreaHeight_l:=($rawBannerHeight_l-$paddingV)/2
	$textAreaWidth:=$rawbannerWidth_l-$paddingH
	
	
	
	  //diagonal of the square : 1.414 is the root of 2 
	$bannerWidth_l:=Round($rawbannerWidth_l/1.414;0)
	$bannerHeight_l:=Round($rawBannerHeight_l/1.414;0)
	$paddingV:=Round($paddingV/1.414;0)
	$paddingH:=Round($paddingH/1.414;0)
	
	  //draw graphics
	$svgRef_t:=DOM Create XML Ref("svg";"http://www.w3.org/2000/svg")
	DOM SET XML ATTRIBUTE($svgRef_t;"width";$bannerWidth_l;"height";$bannerWidth_l)
	DOM SET XML ATTRIBUTE($svgRef_t;"viewBox";"-1 -1 "+String($bannerWidth_l+1)+" "+String($bannerWidth_l+1))
	
	If ($banner_options_obj.banner.position="top-left") | ($banner_options_obj.banner.position="bottom-right")
		$svgGraphicRef_t:=SVG_New_path ($svgRef_t;0;$bannerWidth_l;$borderColor;$bannerBGColor;$borderSize)
	Else 
		$svgGraphicRef_t:=SVG_New_path ($svgRef_t;0;0;$borderColor;$bannerBGColor;$borderSize)
	End if 
	
	$svgPrevRelativeCoordinate_b:=(SVG_Get_options  ?? 4)  //Change to relative coordinates
	SVG_SET_OPTIONS (SVG_Get_options  ?- 4)  //Change to relative coordinates
	
	
	
	  //draw text area
	$style_definition:="{font-size:"+String($textFontSize_l)+";fill:"+$textFontColor_t+";font-family:"+$textFontName_t+";font-style:"+$textFontStyle_t+";font-weight:"+$textFontWeight_t+";text-align:center}"
	
	Case of 
		: ($banner_options_obj.banner.position="top-left")
			
			$textRef_t:=SVG_New_textArea ($svgRef_t;$message_t;0;$bannerWidth_l-$bannerHeight_l+($paddingV/2);$textAreaWidth;$textAreaHeight_l;$style_definition)
			SVG_SET_TRANSFORM_ROTATE ($textRef_t;-45;0;$bannerWidth_l-$bannerHeight_l)
			$difference_l:=$textAreaWidth-(Round(($bannerWidth_l-$bannerHeight_l)*1.414;0))/2
			SVG_SET_TRANSFORM_TRANSLATE ($textRef_t;-$difference_l;0)
			
		: ($banner_options_obj.banner.position="top-right")
			
			$textRef_t:=SVG_New_textArea ($svgRef_t;$message_t;0;0-$bannerHeight_l+($paddingV/2);$textAreaWidth;$textAreaHeight_l;$style_definition)
			SVG_SET_TRANSFORM_ROTATE ($textRef_t;45;0;0-$bannerHeight_l)
			$difference_l:=$textAreaWidth-(Round(($bannerWidth_l-$bannerHeight_l)*1.414;0))/2
			SVG_SET_TRANSFORM_TRANSLATE ($textRef_t;$difference_l;0)
			
			
		: ($banner_options_obj.banner.position="bottom-left")
			
			$textRef_t:=SVG_New_textArea ($svgRef_t;$message_t;0;0+($paddingV/2);$textAreaWidth;$textAreaHeight_l;$style_definition)
			SVG_SET_TRANSFORM_ROTATE ($textRef_t;45;0;0)
			
			
		: ($banner_options_obj.banner.position="bottom-right")
			
			$textRef_t:=SVG_New_textArea ($svgRef_t;$message_t;0;$bannerWidth_l+($paddingV/2);$textAreaWidth;$textAreaHeight_l;$style_definition)
			SVG_SET_TRANSFORM_ROTATE ($textRef_t;-45;0;$bannerWidth_l)
			
	End case 
	
	
	
	  //draw banner
	Case of 
		: ($banner_options_obj.banner.position="top-left")
			
			SVG_PATH_LINE_TO ($svgGraphicRef_t;$bannerWidth_l;-$bannerWidth_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;-$bannerHeight_l;0)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;-$bannerWidth_l+$bannerHeight_l;$bannerWidth_l-$bannerHeight_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;0;$bannerHeight_l)
			
			
			
		: ($banner_options_obj.banner.position="top-right")
			
			SVG_PATH_LINE_TO ($svgGraphicRef_t;$bannerWidth_l;$bannerWidth_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;0;-$bannerHeight_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;-$bannerWidth_l+$bannerHeight_l;-$bannerWidth_l+$bannerHeight_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;-$bannerHeight_l;0)
			
			
		: ($banner_options_obj.banner.position="bottom-left")
			
			SVG_PATH_LINE_TO ($svgGraphicRef_t;$bannerWidth_l;$bannerWidth_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;-$bannerHeight_l;0)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;-$bannerWidth_l+$bannerHeight_l;-$bannerWidth_l+$bannerHeight_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;0;-$bannerHeight_l)
			
			
		: ($banner_options_obj.banner.position="bottom-right")
			
			SVG_PATH_LINE_TO ($svgGraphicRef_t;$bannerWidth_l;-$bannerWidth_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;0;$bannerHeight_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;-$bannerWidth_l+$bannerHeight_l;$bannerWidth_l-$bannerHeight_l)
			SVG_PATH_LINE_TO ($svgGraphicRef_t;-$bannerHeight_l;0)
			
			
	End case 
	
	SVG_PATH_CLOSE ($svgGraphicRef_t)
	
	If (False)
		SVGTool_SHOW_IN_VIEWER ($svgRef_t)
	End if 
	
	SVG EXPORT TO PICTURE($svgRef_t;$pict)
	SVG_CLEAR ($svgRef_t)
Else 
	$pict:=$pict*0
End if 

$result:=$pict