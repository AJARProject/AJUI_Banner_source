//%attributes = {"invisible":true}
  // AJUIB_drawSpinner ( $banner_options_obj  ; $setupSpinner_b  ) 
  //
  // $banner_options_obj : (object) instance
  // $setupSpinner_b : (text) first draw
  //
  // This method draw the spinner and rotate the image for each frame

#DECLARE($param1 : Object; $param2 : Boolean)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 12.06.19, 13:25:41
	  // ----------------------------------------------------
	  // Method: AJUIB_drawSpinner
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $banner_options_obj : Object
var $setupSpinner_b : Boolean
var $frameId; $bannerY_l; $bannerX_l; $bannerHeight_l; $bannerWidth_l; $textFontSize_l; $textAreaX_l; $textAreaY_l; $textAreaHeight_l; $textAreaWidth; $heightSVG_l; $widhtSVG_l; $borderSize; $cornerRadius; $paddingH; $paddingV; $minPaddingSize_r; $translateX; $translateY : Integer
var $scale_r : Real
var $obj2Use_t; $textFontColor_t; $spinnerSide_t; $windowBGColor; $path; $dom; $svgRef_t; $Txt_groupReference_ID; $tipTextRectRef_ID; $bannerType_t; $message_t; $textFontName_t; $textFontWeight_t; $textFontStyle_t; $bannerBGColor; $borderColor; $textAlign; $style_definition; $rectBannerRef_t; $textRef_t; $spinnerElem; $spinnerRef_t; $animElem; $spinnerColor : Text
var $spinner_pict : Picture


$banner_options_obj:=$param1
$setupSpinner_b:=$param2

$obj2Use_t:=$banner_options_obj.banner.name



If ($setupSpinner_b)
	
	
	$windowBGColor:=$banner_options_obj.window.windowBGColor
	$heightSVG_l:=$banner_options_obj.banner.spinner.windowHeight
	$widhtSVG_l:=$banner_options_obj.banner.spinner.windowWidht
	$scale_r:=$banner_options_obj.banner.spinner.scale
	$textFontColor_t:=$banner_options_obj.text.textColor
	$spinnerSide_t:=$banner_options_obj.banner.spinner.side
	
	  //load source file
	$path:=Get 4D folder(Current resources folder)+"SVG"+Folder separator+"loading.svg"
	$dom:=DOM Parse XML source($path)
	
	  //create a new SVG file
	$svgRef_t:=DOM Create XML Ref("svg";"http://www.w3.org/2000/svg")
	DOM SET XML ATTRIBUTE($svgRef_t;"width";$widhtSVG_l;"height";$heightSVG_l)  // svg area
	
	$Txt_groupReference_ID:=DOM Create XML element($svgRef_t;"/svg";"id";"rect")
	
	$tipTextRectRef_ID:=SVG_New_rect ($Txt_groupReference_ID;0;0;$widhtSVG_l;$heightSVG_l;0;0;"none";$windowBGColor;0)
	
	  //check the banner
	$bannerType_t:=$banner_options_obj.banner.type
	If ($bannerType_t="windowSpinner")
		
		  //get text options
		$message_t:=$banner_options_obj.text.message
		
		$textFontName_t:=$banner_options_obj.text.textFontName
		$textFontSize_l:=$banner_options_obj.text.textFontSize
		$textFontWeight_t:=$banner_options_obj.text.textFontWeight
		$textFontStyle_t:=$banner_options_obj.text.textFontStyle
		
		  //get banner options
		$bannerBGColor:=$banner_options_obj.banner.bannerBGColor
		$bannerHeight_l:=$banner_options_obj.banner.bannerHeight
		$bannerWidth_l:=$banner_options_obj.banner.bannerWidth
		$borderColor:=$banner_options_obj.banner.borderColor
		$borderSize:=$banner_options_obj.banner.borderSize
		$cornerRadius:=$banner_options_obj.banner.cornerRadius
		$paddingH:=0
		$paddingV:=($bannerHeight_l-($textFontSize_l*1.25))/2
		
		  //calculate banner coordinates
		$bannerX_l:=($widhtSVG_l/2)-($bannerWidth_l/2)
		$bannerY_l:=($heightSVG_l/2)-($bannerHeight_l/2)
		
		$textAreaHeight_l:=$bannerHeight_l-$paddingV
		$scale_r:=$textAreaHeight_l/$heightSVG_l
		
		$textAreaY_l:=$bannerY_l+$paddingV
		
		$minPaddingSize_r:=(320*$scale_r)+20
		
		
		  //calculate text area
		If ($bannerType_t="windowSpinner") & ($spinnerSide_t="left")
			
			If ($minPaddingSize_r>$paddingH)
				$textAreaX_l:=$bannerX_l+$minPaddingSize_r+10
			Else 
				$textAreaX_l:=$bannerX_l+$paddingH+10
			End if 
			$textAlign:="text-align:left"
		Else 
			$textAreaX_l:=$bannerX_l+$paddingH
			
			If ($minPaddingSize_r>$paddingH)
				$paddingH:=$minPaddingSize_r
			End if 
			$textAlign:="text-align:center"
		End if 
		
		$textAreaWidth:=$bannerWidth_l-$paddingH
		
		  //style definition
		$style_definition:="{font-size:"+String($textFontSize_l)+";fill:"+$textFontColor_t+";font-family:"+$textFontName_t+";font-style:"+$textFontStyle_t+";font-weight:"+$textFontWeight_t+";"+$textAlign+"}"
		
		
		$rectBannerRef_t:=SVG_New_rect ($svgRef_t;$bannerX_l;$bannerY_l;$bannerWidth_l;$bannerHeight_l;$cornerRadius;$cornerRadius;$borderColor;$bannerBGColor;$borderSize)
		
		$textRef_t:=SVG_New_textArea ($svgRef_t;$message_t;$textAreaX_l;$textAreaY_l;$textAreaWidth;$textAreaHeight_l;$style_definition)
		
		
		
	End if 
	
	  //get the spinner element to place it in the last position in the new SVG
	$spinnerElem:=DOM Find XML element by ID($dom;"spinner")
	$spinnerRef_t:=DOM Append XML element($svgRef_t;$spinnerElem)
	
	  //scale, apply in the second level (anim)
	$animElem:=DOM Find XML element by ID($svgRef_t;"anim")
	SVG_SET_TRANSFORM_SCALE ($animElem;$scale_r;$scale_r)
	
	  //translate, apply in the first level (spinner), like that the positions X and Y are not scaled when we applied the scale
	$spinnerElem:=DOM Find XML element by ID($svgRef_t;"spinner")
	
	  //320x320 = SVG size of the source file 
	If ($bannerType_t="windowSpinner")
		If ($spinnerSide_t="left")
			$translateX:=$bannerX_l+10
		Else 
			$translateX:=$textAreaX_l+$textAreaWidth-10
		End if 
	Else 
		$translateX:=($widhtSVG_l/2)-((320*$scale_r)/2)
	End if 
	$translateY:=($heightSVG_l/2)-((320*$scale_r)/2)
	
	SVG_SET_TRANSFORM_TRANSLATE ($spinnerElem;$translateX;$translateY)
	
	$spinnerColor:=DOM Find XML element by ID($svgRef_t;"line0")
	
	SVG_SET_ATTRIBUTES ($spinnerColor;"stroke";$textFontColor_t)
	
	If (False)
		SVGTool_SHOW_IN_VIEWER ($svgRef_t)
	End if 
	
	SVG EXPORT TO PICTURE($svgRef_t;$spinner_pict;Copy XML data source)
	
	SVG_CLEAR ($dom)
	SVG_CLEAR ($svgRef_t)
	
	OBJECT Get pointer(Object named;$obj2Use_t)->:=$spinner_pict
	OBJECT SET COORDINATES(*;$obj2Use_t;0;0;$widhtSVG_l;$heightSVG_l)
	
	
	
	
	If (Folder separator#":")
		SVG SET ATTRIBUTE(*;"$obj2Use_t";"";"4d-enableD2D";True)
	End if 
	
Else 
	
	  //check the current frame of the spinner
	SVG GET ATTRIBUTE(*;$obj2Use_t;"loading";"animation:frame-id";$frameId)
	
	If ($frameId=12)
		$frameId:=1
	Else 
		$frameId:=$frameId+1
	End if 
	
	  //update and apply the new frame
	SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"animation:frame-id";$frameId)
	
	
	Case of 
		: ($frameId=1)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(0,160,160)")
		: ($frameId=2)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(30,160,160)")
		: ($frameId=3)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(60,160,160)")
		: ($frameId=4)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(90,160,160)")
		: ($frameId=5)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(120,160,160)")
		: ($frameId=6)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(150,160,160)")
		: ($frameId=7)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(180,160,160)")
		: ($frameId=8)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(210,160,160)")
		: ($frameId=9)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(240,160,160)")
		: ($frameId=10)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(270,160,160)")
		: ($frameId=11)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(300,160,160)")
		: ($frameId=12)
			SVG SET ATTRIBUTE(*;$obj2Use_t;"loading";"transform";"rotate(330,160,160)")
	End case 
	
End if 