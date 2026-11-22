//%attributes = {"invisible":true}
  // AJUIB_drawBanner ( ) 
  //
  //
  // Main function to launch the draw of the banner.

#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 13:48:48
	  // ----------------------------------------------------
	  // Method: AJUIB_drawBanner
	  // This method is launched by the banner objects with her formula. It will handle the draw of
	  // the banner based on the properties of the banner object.
	  // banner type available : window, cornerRibbon, spinner, windowSpinner
	  // ----------------------------------------------------
	  // Modified by: gabriel inzirillo (11.07.19 - 11:03:09) Set the resize option for the different types
End if 


var $banner_options_obj : Object
var $pict : Picture
var $windowTop_l; $windowLeft_l; $windowBottom_l; $windowRight_l; $targetRibbonLeft_l; $targetRibbonTop_l; $targetRibbonRight_l; $targetRibbonBottom_l; $heightWindow_l; $widhtWindow_l; $targetMoveX_l; $targetMoveY_l; $bannerWidth_l : Integer
var $bannerObject_t; $cornerRibbonObject_2use_t; $bannerType_t; $targetRibbonName; $bannerObject2use_t : Text
var $bannerFormObjExists; $crFormObjExists : Boolean

$banner_options_obj:=This

If (Count parameters=0)
	
	CALL FORM(Current form window;Current method name;$banner_options_obj)
	
Else 
	
	$banner_options_obj:=$param1
	
	  //check if we have a banner type
	If ($banner_options_obj.banner.type#Null)
		
		  //get coordinates window
		If ($banner_options_obj.window.windowRef=0)
			GET WINDOW RECT($windowLeft_l;$windowTop_l;$windowRight_l;$windowBottom_l;Current form window)
		Else 
			GET WINDOW RECT($windowLeft_l;$windowTop_l;$windowRight_l;$windowBottom_l;$banner_options_obj.window.windowRef)
		End if 
		
		  //calculate size window
		$heightWindow_l:=$windowBottom_l-$windowTop_l
		$widhtWindow_l:=$windowRight_l-$windowLeft_l
		
		  //check if we are in the first page of the form
		If (FORM Get current page=1)
			$bannerObject_t:="AJUI_Banner"  // object form template
			$bannerObject2use_t:="AJUI_Banner_2use"
			$cornerRibbonObject_2use_t:="AJUI_cr_2use"
		Else 
			$bannerObject_t:="AJUI_Banner"+String(FORM Get current page)  // object form template
			$bannerObject2use_t:="AJUI_Banner_2use"+String(FORM Get current page)
			$cornerRibbonObject_2use_t:="AJUI_cr_2use"+String(FORM Get current page)
		End if 
		
		  //check the banner case to draw
		$bannerType_t:=$banner_options_obj.banner.type
		
		Case of 
			: ($bannerType_t="window")
				  // *************
				  //window type
				
				If ($banner_options_obj.BannerName()#"")
					$bannerObject2use_t:=$banner_options_obj.BannerName()
				Else 
					$banner_options_obj.BannerName($bannerObject2use_t)
				End if 
				
				  // Check if the form object "AJUI_Banner" exists /// MI 24-Apr-2019 10:32:30 (GMT+1)
				FORM GET OBJECTS($_objectsForm;Form current page+Form inherited)
				$bannerFormObjExists:=(Find in array($_objectsForm;$bannerObject2use_t)>0)
				If (Not($bannerFormObjExists))
					OBJECT DUPLICATE(*;$bannerObject_t;$bannerObject2use_t)
				End if 
				OBJECT SET RESIZING OPTIONS(*;$bannerObject2use_t;Resize horizontal grow;Resize vertical grow)
				OBJECT SET FORMAT(*;$bannerObject2use_t;Char(Scaled to fit))
				
				OBJECT Get pointer(Object named;$bannerObject2use_t)->:=AJUIB_windowBanner ($banner_options_obj;$heightWindow_l;$widhtWindow_l)
				OBJECT SET COORDINATES(*;$bannerObject2use_t;0;0;$widhtWindow_l;$heightWindow_l)
				
				OBJECT SET VISIBLE(*;$bannerObject2use_t;True)
				
			: ($bannerType_t="cornerRibbon")
				  // *************
				  //cr type
				If ($banner_options_obj.BannerName()#"")
					$cornerRibbonObject_2use_t:=$banner_options_obj.BannerName()
				Else 
					$banner_options_obj.BannerName($cornerRibbonObject_2use_t)
				End if 
				
				  // Check if the form object "AJUI_cr" exists // MI 23-Apr-2019 11:31:40 (GMT+1)
				FORM GET OBJECTS($_objectsForm;Form current page+Form inherited)
				$crFormObjExists:=(Find in array($_objectsForm;$cornerRibbonObject_2use_t)>0)
				If (Not($crFormObjExists))
					OBJECT DUPLICATE(*;$bannerObject_t;$cornerRibbonObject_2use_t)
				End if 
				OBJECT SET FORMAT(*;$bannerObject2use_t;Char(Truncated non centered))
				
				OBJECT Get pointer(Object named;$cornerRibbonObject_2use_t)->:=AJUIB_cornerRibbon ($banner_options_obj)
				$bannerWidth_l:=$banner_options_obj.banner.bannerWidth/1.414  //diagonal of the square : 1.414 is the root of 2
				
				
				$targetRibbonLeft_l:=$banner_options_obj.banner.ribbon.targetCoordinates.left
				$targetRibbonTop_l:=$banner_options_obj.banner.ribbon.targetCoordinates.top
				$targetRibbonRight_l:=$banner_options_obj.banner.ribbon.targetCoordinates.right
				$targetRibbonBottom_l:=$banner_options_obj.banner.ribbon.targetCoordinates.bottom
				$targetRibbonName:=$banner_options_obj.banner.ribbon.targetName
				$targetMoveX_l:=0
				$targetMoveY_l:=0
				
				  //check specific target
				If ($targetRibbonLeft_l=0) & ($targetRibbonTop_l=0) & ($targetRibbonRight_l=0) & ($targetRibbonBottom_l=0)
					If ($targetRibbonName#"")
						OBJECT GET COORDINATES(*;$targetRibbonName;$targetRibbonLeft_l;$targetRibbonTop_l;$targetRibbonRight_l;$targetRibbonBottom_l)
						
						$heightWindow_l:=$targetRibbonBottom_l-$targetRibbonTop_l
						$widhtWindow_l:=$targetRibbonRight_l-$targetRibbonLeft_l
						$targetMoveX_l:=$targetRibbonLeft_l
						$targetMoveY_l:=$targetRibbonTop_l
					End if 
				Else 
					$heightWindow_l:=$targetRibbonBottom_l-$targetRibbonTop_l
					$widhtWindow_l:=$targetRibbonRight_l-$targetRibbonLeft_l
					$targetMoveX_l:=$targetRibbonLeft_l
					$targetMoveY_l:=$targetRibbonTop_l
				End if 
				
				Case of 
					: ($banner_options_obj.banner.position="top-left")
						
						OBJECT SET COORDINATES(*;$cornerRibbonObject_2use_t;0+$targetMoveX_l;0+$targetMoveY_l;$bannerWidth_l+$targetMoveX_l;$bannerWidth_l+$targetMoveY_l)
						
					: ($banner_options_obj.banner.position="top-right")
						
						OBJECT SET COORDINATES(*;$cornerRibbonObject_2use_t;$widhtWindow_l-$bannerWidth_l+$targetMoveX_l;0+$targetMoveY_l;$widhtWindow_l+$targetMoveX_l;$bannerWidth_l+$targetMoveY_l)
						OBJECT SET RESIZING OPTIONS(*;$cornerRibbonObject_2use_t;Resize horizontal move;Resize vertical none)
						
					: ($banner_options_obj.banner.position="bottom-left")
						
						OBJECT SET COORDINATES(*;$cornerRibbonObject_2use_t;0+$targetMoveX_l;$heightWindow_l-$bannerWidth_l+$targetMoveY_l;$bannerWidth_l+$targetMoveX_l;$heightWindow_l+$targetMoveY_l)
						OBJECT SET RESIZING OPTIONS(*;$cornerRibbonObject_2use_t;Resize horizontal none;Resize vertical move)
						
					: ($banner_options_obj.banner.position="bottom-right")
						
						OBJECT SET COORDINATES(*;$cornerRibbonObject_2use_t;$widhtWindow_l-$bannerWidth_l+$targetMoveX_l;$heightWindow_l-$bannerWidth_l+$targetMoveY_l;$widhtWindow_l+$targetMoveX_l;$heightWindow_l+$targetMoveY_l)
						OBJECT SET RESIZING OPTIONS(*;$cornerRibbonObject_2use_t;Resize horizontal move;Resize vertical move)
						
				End case 
				
				OBJECT SET VISIBLE(*;$cornerRibbonObject_2use_t;True)
				
				  //spinner types
			: ($bannerType_t="spinner") | ($bannerType_t="windowSpinner")
				
				
				If ($banner_options_obj.BannerName()#"")
					$bannerObject2use_t:=$banner_options_obj.BannerName()
				Else 
					$banner_options_obj.BannerName($bannerObject2use_t)
				End if 
				
				  // Check if the form object "AJUI_Banner" exists /// MI 24-Apr-2019 10:32:30 (GMT+1)
				FORM GET OBJECTS($_objectsForm;Form current page+Form inherited)
				$bannerFormObjExists:=(Find in array($_objectsForm;$bannerObject2use_t)>0)
				If (Not($bannerFormObjExists))
					OBJECT DUPLICATE(*;$bannerObject_t;$bannerObject2use_t)
				End if 
				OBJECT SET RESIZING OPTIONS(*;$bannerObject2use_t;Resize horizontal grow;Resize vertical grow)
				OBJECT SET FORMAT(*;$bannerObject2use_t;Char(Scaled to fit))
				
				If (Storage.AJUIB_spinner=Null)
					Use (Storage)
						Storage.AJUIB_spinner:=New shared object
					End use 
				End if 
				
				Use (Storage.AJUIB_spinner)
					Storage.AJUIB_spinner.activate:=True
				End use 
				
				  //update spinner properties
				$banner_options_obj.banner.spinner.windowHeight:=$heightWindow_l
				$banner_options_obj.banner.spinner.windowWidht:=$widhtWindow_l
				
				If ($banner_options_obj.window.windowRef=0)
					$banner_options_obj.banner.spinner.windowRef:=Current form window
				End if 
				
				
				CALL WORKER("AJUIB_spinner";"AJUIB_spinnerAnimation";$banner_options_obj)
				
				OBJECT SET VISIBLE(*;$bannerObject2use_t;True)
			Else 
				ALERT("Unknow banner type")
				
		End case 
	Else 
		ALERT("Type not specified")
	End if 
End if 