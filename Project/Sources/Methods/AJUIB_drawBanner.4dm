//%attributes = {"invisible":true}
  // AJUIB_drawBanner ( ) 
  //
  //
  // Main function to launch the draw of the banner.

If (False:C215)
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


C_OBJECT:C1216($1;$banner_options_obj)
C_PICTURE:C286($pict)
C_LONGINT:C283($windowTop_l;$windowLeft_l;$windowBottom_l;$windowRight_l)
C_LONGINT:C283($targetRibbonLeft_l;$targetRibbonTop_l;$targetRibbonRight_l;$targetRibbonBottom_l)
C_LONGINT:C283($heightWindow_l;$widhtWindow_l;$targetMoveX_l;$targetMoveY_l;$bannerWidth_l)
C_TEXT:C284($bannerObject_t;$cornerRibbonObject_2use_t;$bannerType_t;$targetRibbonName)

$banner_options_obj:=This:C1470

If (Count parameters:C259=0)
	
	CALL FORM:C1391(Current form window:C827;Current method name:C684;$banner_options_obj)
	
Else 
	
	$banner_options_obj:=$1
	
	  //check if we have a banner type
	If ($banner_options_obj.banner.type#Null:C1517)
		
		  //get coordinates window
		If ($banner_options_obj.window.windowRef=0)
			GET WINDOW RECT:C443($windowLeft_l;$windowTop_l;$windowRight_l;$windowBottom_l;Current form window:C827)
		Else 
			GET WINDOW RECT:C443($windowLeft_l;$windowTop_l;$windowRight_l;$windowBottom_l;$banner_options_obj.window.windowRef)
		End if 
		
		  //calculate size window
		$heightWindow_l:=$windowBottom_l-$windowTop_l
		$widhtWindow_l:=$windowRight_l-$windowLeft_l
		
		  //check if we are in the first page of the form
		If (FORM Get current page:C276=1)
			$bannerObject_t:="AJUI_Banner"  // object form template
			$bannerObject2use_t:="AJUI_Banner_2use"
			$cornerRibbonObject_2use_t:="AJUI_cr_2use"
		Else 
			$bannerObject_t:="AJUI_Banner"+String:C10(FORM Get current page:C276)  // object form template
			$bannerObject2use_t:="AJUI_Banner_2use"+String:C10(FORM Get current page:C276)
			$cornerRibbonObject_2use_t:="AJUI_cr_2use"+String:C10(FORM Get current page:C276)
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
				FORM GET OBJECTS:C898($_objectsForm;Form current page:K67:6+Form inherited:K67:8)
				$bannerFormObjExists:=(Find in array:C230($_objectsForm;$bannerObject2use_t)>0)
				If (Not:C34($bannerFormObjExists))
					OBJECT DUPLICATE:C1111(*;$bannerObject_t;$bannerObject2use_t)
				End if 
				OBJECT SET RESIZING OPTIONS:C1175(*;$bannerObject2use_t;Resize horizontal grow:K42:8;Resize vertical grow:K42:11)
				OBJECT SET FORMAT:C236(*;$bannerObject2use_t;Char:C90(Scaled to fit:K6:2))
				
				OBJECT Get pointer:C1124(Object named:K67:5;$bannerObject2use_t)->:=AJUIB_windowBanner ($banner_options_obj;$heightWindow_l;$widhtWindow_l)
				OBJECT SET COORDINATES:C1248(*;$bannerObject2use_t;0;0;$widhtWindow_l;$heightWindow_l)
				
				OBJECT SET VISIBLE:C603(*;$bannerObject2use_t;True:C214)
				
			: ($bannerType_t="cornerRibbon")
				  // *************
				  //cr type
				If ($banner_options_obj.BannerName()#"")
					$cornerRibbonObject_2use_t:=$banner_options_obj.BannerName()
				Else 
					$banner_options_obj.BannerName($cornerRibbonObject_2use_t)
				End if 
				
				  // Check if the form object "AJUI_cr" exists // MI 23-Apr-2019 11:31:40 (GMT+1)
				FORM GET OBJECTS:C898($_objectsForm;Form current page:K67:6+Form inherited:K67:8)
				$crFormObjExists:=(Find in array:C230($_objectsForm;$cornerRibbonObject_2use_t)>0)
				If (Not:C34($crFormObjExists))
					OBJECT DUPLICATE:C1111(*;$bannerObject_t;$cornerRibbonObject_2use_t)
				End if 
				OBJECT SET FORMAT:C236(*;$bannerObject2use_t;Char:C90(Truncated non centered:K6:4))
				
				OBJECT Get pointer:C1124(Object named:K67:5;$cornerRibbonObject_2use_t)->:=AJUIB_cornerRibbon ($banner_options_obj)
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
						OBJECT GET COORDINATES:C663(*;$targetRibbonName;$targetRibbonLeft_l;$targetRibbonTop_l;$targetRibbonRight_l;$targetRibbonBottom_l)
						
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
						
						OBJECT SET COORDINATES:C1248(*;$cornerRibbonObject_2use_t;0+$targetMoveX_l;0+$targetMoveY_l;$bannerWidth_l+$targetMoveX_l;$bannerWidth_l+$targetMoveY_l)
						
					: ($banner_options_obj.banner.position="top-right")
						
						OBJECT SET COORDINATES:C1248(*;$cornerRibbonObject_2use_t;$widhtWindow_l-$bannerWidth_l+$targetMoveX_l;0+$targetMoveY_l;$widhtWindow_l+$targetMoveX_l;$bannerWidth_l+$targetMoveY_l)
						OBJECT SET RESIZING OPTIONS:C1175(*;$cornerRibbonObject_2use_t;Resize horizontal move:K42:9;Resize vertical none:K42:10)
						
					: ($banner_options_obj.banner.position="bottom-left")
						
						OBJECT SET COORDINATES:C1248(*;$cornerRibbonObject_2use_t;0+$targetMoveX_l;$heightWindow_l-$bannerWidth_l+$targetMoveY_l;$bannerWidth_l+$targetMoveX_l;$heightWindow_l+$targetMoveY_l)
						OBJECT SET RESIZING OPTIONS:C1175(*;$cornerRibbonObject_2use_t;Resize horizontal none:K42:7;Resize vertical move:K42:12)
						
					: ($banner_options_obj.banner.position="bottom-right")
						
						OBJECT SET COORDINATES:C1248(*;$cornerRibbonObject_2use_t;$widhtWindow_l-$bannerWidth_l+$targetMoveX_l;$heightWindow_l-$bannerWidth_l+$targetMoveY_l;$widhtWindow_l+$targetMoveX_l;$heightWindow_l+$targetMoveY_l)
						OBJECT SET RESIZING OPTIONS:C1175(*;$cornerRibbonObject_2use_t;Resize horizontal move:K42:9;Resize vertical move:K42:12)
						
				End case 
				
				OBJECT SET VISIBLE:C603(*;$cornerRibbonObject_2use_t;True:C214)
				
				  //spinner types
			: ($bannerType_t="spinner") | ($bannerType_t="windowSpinner")
				
				
				If ($banner_options_obj.BannerName()#"")
					$bannerObject2use_t:=$banner_options_obj.BannerName()
				Else 
					$banner_options_obj.BannerName($bannerObject2use_t)
				End if 
				
				  // Check if the form object "AJUI_Banner" exists /// MI 24-Apr-2019 10:32:30 (GMT+1)
				FORM GET OBJECTS:C898($_objectsForm;Form current page:K67:6+Form inherited:K67:8)
				$bannerFormObjExists:=(Find in array:C230($_objectsForm;$bannerObject2use_t)>0)
				If (Not:C34($bannerFormObjExists))
					OBJECT DUPLICATE:C1111(*;$bannerObject_t;$bannerObject2use_t)
				End if 
				OBJECT SET RESIZING OPTIONS:C1175(*;$bannerObject2use_t;Resize horizontal grow:K42:8;Resize vertical grow:K42:11)
				OBJECT SET FORMAT:C236(*;$bannerObject2use_t;Char:C90(Scaled to fit:K6:2))
				
				If (Storage:C1525.AJUIB_spinner=Null:C1517)
					Use (Storage:C1525)
						Storage:C1525.AJUIB_spinner:=New shared object:C1526
					End use 
				End if 
				
				Use (Storage:C1525.AJUIB_spinner)
					Storage:C1525.AJUIB_spinner.activate:=True:C214
				End use 
				
				  //update spinner properties
				$banner_options_obj.banner.spinner.windowHeight:=$heightWindow_l
				$banner_options_obj.banner.spinner.windowWidht:=$widhtWindow_l
				
				If ($banner_options_obj.window.windowRef=0)
					$banner_options_obj.banner.spinner.windowRef:=Current form window:C827
				End if 
				
				
				CALL WORKER:C1389("AJUIB_spinner";"AJUIB_spinnerAnimation";$banner_options_obj)
				
				OBJECT SET VISIBLE:C603(*;$bannerObject2use_t;True:C214)
			Else 
				ALERT:C41("Unknow banner type")
				
		End case 
	Else 
		ALERT:C41("Type not specified")
	End if 
End if 