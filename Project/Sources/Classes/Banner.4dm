Class constructor
	
	AJUIB_initAttributes (This:C1470)
	
Function DrawBanner
	  // ----------------------
	  // Function
	  // ----------------------
	  // Main function to launch the draw of the banner.
	
	AJUIB_drawBanner 
	
Function StopSpinner
	  // ----------------------
	  // Function
	  // ----------------------
	  // This method stop the spinner animation and clear the form object picture linked to the instance
	
	AJUIB_stopSpinnerAnimation 
	
Function HideBanner
	  // ----------------------
	  // Function
	  // ----------------------
	  // Hide the banner linked to the instance name
	
	AJUIB_hideBanner 
	
Function WindowBGColor
	  // ----------------------
	  // Window
	  // ----------------------
	  // Getter/Setter for the window background color property of the banner. (banner window type only)
	
	  // $1 : (text) (optional) color
	  // $0 : (text) (return) current window background color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_windowBGColor 
	Else 
		AJUIB_GetSet_windowBGColor ($1)
	End if 
	
Function WindowRef
	  // ----------------------
	  // Window
	  // ----------------------
	  // Getter/Setter for window reference property.
	
	  // $1 : (longint) (optional) form ref
	  // $0 : (longint) (return) current form reference
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_windowRef 
	Else 
		AJUIB_GetSet_windowRef ($1)
	End if 
	
Function BannerBGColor
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the background color property of the banner.
	
	  // $1 : (text) (optional) color
	  // $0 : (text) (return) current background color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_bannerBGColor 
	Else 
		AJUIB_GetSet_bannerBGColor ($1)
	End if 
	
Function BannerHeight
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the height property of the banner.
	
	  // $1 : (longint) (optional) height
	  // $0 : (longint) (return) current height of the banner
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_bannerHeight 
	Else 
		AJUIB_GetSet_bannerHeight ($1)
	End if 
	
Function BannerName
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the name property of the banner.
	
	  // $1 : (text) (optional) name
	  // $0 : (text) (return) current name
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_name 
	Else 
		AJUIB_GetSet_name ($1)
	End if 
	
Function BannerPosition
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the position property of the banner (banner : cr type only).
	
	  // $1 : (text) (optional) position
	  // $0 : (text) (return) current position
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_bannerPosition 
	Else 
		AJUIB_GetSet_bannerPosition ($1)
	End if 
	
Function BannerType
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the type property of the banner.
	
	  // $1 : (text) (optional) type
	  // $0 : (text) (return) current type
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_bannerType 
	Else 
		AJUIB_GetSet_bannerType ($1)
	End if 
	
Function BannerWidth
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the width property of the banner.
	
	  // $1 : (longint) (optional) width
	  // $0 : (longint) (return) current width of the banner
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_bannerWidth 
	Else 
		AJUIB_GetSet_bannerWidth ($1)
	End if 
	
Function BorderColor
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the border color property of the banner.
	
	  // $1 : (text) (optional) color
	  // $0 : (text) (return) current border color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_borderColor 
	Else 
		AJUIB_GetSet_borderColor ($1)
	End if 
	
Function BorderSize
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the border size property of the banner.
	
	  // $1 : (longint) (optional) size
	  // $0 : (longint) (return) current border size
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_borderSize 
	Else 
		AJUIB_GetSet_borderSize ($1)
	End if 
	
Function cornerRadius
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the corner rounding property of the banner.
	
	  // $1 : (longint) (optional) corner radius
	  // $0 : (longint) (return) current corner radius
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_cornerRadius 
	Else 
		AJUIB_GetSet_cornerRadius ($1)
	End if 
	
Function SpinnerScale
	  // ----------------------
	  // Spinner
	  // ----------------------
	  // Getter and setter for the scale to apply for the spinner size
	
	  // $1 : (real) (optional) scale
	  // $0 : (real) (return) current scale
	
	C_REAL:C285($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_spinnerScale 
	Else 
		AJUIB_GetSet_spinnerScale ($1)
	End if 
	
Function WindowSpinnerSide
	  // ----------------------
	  // Spinner
	  // ----------------------
	  // Getter and setter for the spinner side (only windowSpinner type)
	
	  // $1 : (text) (optional) side
	  // $0 : (text) (return) current spinner side
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_windowSpinnerSide 
	Else 
		AJUIB_GetSet_windowSpinnerSide ($1)
	End if 
	
Function IsPicture
	  // ----------------------
	  // Picture
	  // ----------------------
	  // Getter/Setter to use a picture instead of the text in the banner (banner : window type only).
	
	  // $1 : (boolean) (optional) show picture ?
	  // $0 : (boolean) (return) picture currently used ?
	
	C_BOOLEAN:C305($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_isPicture 
	Else 
		AJUIB_GetSet_isPicture ($1)
	End if 
	
Function PicturePath
	  // ----------------------
	  // Picture
	  // ----------------------
	  // Getter/Setter for the path of the picture file in the resources folder.
	
	  // $1 : (text) (optional) file path
	  // $0 : (text) (return) current picture file path
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_picturePath 
	Else 
		AJUIB_GetSet_picturePath ($1)
	End if 
	
Function RibbonTargetCoordinates
	  // ----------------------
	  // Ribbon
	  // ----------------------
	  // Getter and Setter to put the specific coordinates of an object to place the ribbon
	
	  // $1 : (longint) (optional) left
	  // $2 : (longint) (optional) top 
	  // $3 : (longint) (optional) right
	  // $4 : (longint) (optional) bottom
	  // $0 : (object) (return) current coordinates
	
	C_LONGINT:C283($1;$2;$3;$4)
	C_OBJECT:C1216($0)
	
	Case of 
		: (Count parameters:C259=0)
			$0:=AJUIB_GetSet_RibbonTargetCoord 
		: (Count parameters:C259=1)
			AJUIB_GetSet_RibbonTargetCoord ($1)
		: (Count parameters:C259=2)
			AJUIB_GetSet_RibbonTargetCoord ($1;$2)
		: (Count parameters:C259=3)
			AJUIB_GetSet_RibbonTargetCoord ($1;$2;$3)
		: (Count parameters:C259=4)
			AJUIB_GetSet_RibbonTargetCoord ($1;$2;$3;$4)
	End case 
	
Function RibbonTargetName
	  // ----------------------
	  // Ribbon
	  // ----------------------
	  // Getter and Setter to specify an object who will receive the ribbon
	
	  // $1 : (text) (optional) form object name
	  // $0 : (text) (return) current form object name
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_RibbonTargetName 
	Else 
		AJUIB_GetSet_RibbonTargetName ($1)
	End if 
	
Function Message
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the message property of the banner.
	
	  // $1 : (text) (optional) message
	  // $0 : (text) (return) current message in the banner
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_message 
	Else 
		AJUIB_GetSet_message ($1)
	End if 
	
Function TextColor
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text color property.
	
	  // $1 : (text) (optional) color
	  // $0 : (text) (return) current text color
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_textColor 
	Else 
		AJUIB_GetSet_textColor ($1)
	End if 
	
Function TextFontName
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text font name property.
	
	  // $1 : (text) (optional) font name
	  // $0 : (text) (return) current font name
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_textFontName 
	Else 
		AJUIB_GetSet_textFontName ($1)
	End if 
	
Function TextFontSize
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text font size property.
	
	  // $1 : (text) (optional) font size
	  // $0 : (text) (return) current font size
	
	C_LONGINT:C283($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_textFontSize 
	Else 
		AJUIB_GetSet_textFontSize ($1)
	End if 
	
Function TextFontStyle
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text font style property.
	
	  // $1 : (text) (optional) font style
	  // $0 : (text) (return) current font style
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_textFontStyle 
	Else 
		AJUIB_GetSet_textFontStyle ($1)
	End if 
	
Function TextFontWeight
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text font weight property.
	
	  // $1 : (text) (optional) font weight
	  // $0 : (text) (return) current font weight
	
	C_TEXT:C284($0;$1)
	
	If (Count parameters:C259=0)
		$0:=AJUIB_GetSet_textFontWeight 
	Else 
		AJUIB_GetSet_textFontWeight ($1)
	End if 