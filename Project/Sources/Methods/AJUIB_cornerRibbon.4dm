//%attributes = {"invisible":true}
  // AJUIB_crBanner ( $banner_options_obj ) -> return
  //
  // $banner_options_obj : (object) banner object
  // return : (picture) picture of the cr banner
  //
  // This method draw the cr banner based on the properties of the banner object

If (False:C215)
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

C_OBJECT:C1216($1;$banner_options_obj)
C_PICTURE:C286($0;$pict)
C_LONGINT:C283($textFontSize_l;$textAreaHeight_l;$textAreaWidth;$difference_l)
C_LONGINT:C283($rawBannerHeight_l;$rawbannerWidth_l;$cornerRadius_l;$bannerWidth_l;$bannerHeight_l)
C_TEXT:C284($textFontColor_t;$textFontName_t;$message_t;$textFontWeight_t;$textFontStyle_t)

$banner_options_obj:=$1

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
	$bannerWidth_l:=Round:C94($rawbannerWidth_l/1.414;0)
	$bannerHeight_l:=Round:C94($rawBannerHeight_l/1.414;0)
	$paddingV:=Round:C94($paddingV/1.414;0)
	$paddingH:=Round:C94($paddingH/1.414;0)
	
	  //draw graphics
	$svgRef_t:=DOM Create XML Ref:C861("svg";"http://www.w3.org/2000/svg")
	DOM SET XML ATTRIBUTE:C866($svgRef_t;"width";$bannerWidth_l;"height";$bannerWidth_l)
	DOM SET XML ATTRIBUTE:C866($svgRef_t;"viewBox";"-1 -1 "+String:C10($bannerWidth_l+1)+" "+String:C10($bannerWidth_l+1))
	
	If ($banner_options_obj.banner.position="top-left") | ($banner_options_obj.banner.position="bottom-right")
		$svgGraphicRef_t:=SVG_New_path ($svgRef_t;0;$bannerWidth_l;$borderColor;$bannerBGColor;$borderSize)
	Else 
		$svgGraphicRef_t:=SVG_New_path ($svgRef_t;0;0;$borderColor;$bannerBGColor;$borderSize)
	End if 
	
	$svgPrevRelativeCoordinate_b:=(SVG_Get_options  ?? 4)  //Change to relative coordinates
	SVG_SET_OPTIONS (SVG_Get_options  ?- 4)  //Change to relative coordinates
	
	
	
	  //draw text area
	$style_definition:="{font-size:"+String:C10($textFontSize_l)+";fill:"+$textFontColor_t+";font-family:"+$textFontName_t+";font-style:"+$textFontStyle_t+";font-weight:"+$textFontWeight_t+";text-align:center}"
	
	Case of 
		: ($banner_options_obj.banner.position="top-left")
			
			$textRef_t:=SVG_New_textArea ($svgRef_t;$message_t;0;$bannerWidth_l-$bannerHeight_l+($paddingV/2);$textAreaWidth;$textAreaHeight_l;$style_definition)
			SVG_SET_TRANSFORM_ROTATE ($textRef_t;-45;0;$bannerWidth_l-$bannerHeight_l)
			$difference_l:=$textAreaWidth-(Round:C94(($bannerWidth_l-$bannerHeight_l)*1.414;0))/2
			SVG_SET_TRANSFORM_TRANSLATE ($textRef_t;-$difference_l;0)
			
		: ($banner_options_obj.banner.position="top-right")
			
			$textRef_t:=SVG_New_textArea ($svgRef_t;$message_t;0;0-$bannerHeight_l+($paddingV/2);$textAreaWidth;$textAreaHeight_l;$style_definition)
			SVG_SET_TRANSFORM_ROTATE ($textRef_t;45;0;0-$bannerHeight_l)
			$difference_l:=$textAreaWidth-(Round:C94(($bannerWidth_l-$bannerHeight_l)*1.414;0))/2
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
	
	If (False:C215)
		SVGTool_SHOW_IN_VIEWER ($svgRef_t)
	End if 
	
	SVG EXPORT TO PICTURE:C1017($svgRef_t;$pict)
	SVG_CLEAR ($svgRef_t)
Else 
	$pict:=$pict*0
End if 

$0:=$pict