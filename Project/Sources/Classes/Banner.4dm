// Declared so the 21 R4 compiler knows the properties set on This (4D 21 R4 classes).
// https://developer.4d.com/docs/21-R4/Concepts/classes
property banner; picture; text; window : Object

Class constructor
	
	AJUIB_initAttributes (This)
	
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
	
Function WindowBGColor($param1 : Text) -> $result : Text
	  // ----------------------
	  // Window
	  // ----------------------
	  // Getter/Setter for the window background color property of the banner. (banner window type only)
	
	  // $1 : (text) (optional) color
	  // $0 : (text) (return) current window background color
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_windowBGColor 
	Else 
		AJUIB_GetSet_windowBGColor ($param1)
	End if 
	
Function WindowRef($param1 : Integer) -> $result : Integer
	  // ----------------------
	  // Window
	  // ----------------------
	  // Getter/Setter for window reference property.
	
	  // $1 : (longint) (optional) form ref
	  // $0 : (longint) (return) current form reference
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_windowRef 
	Else 
		AJUIB_GetSet_windowRef ($param1)
	End if 
	
Function BannerBGColor($param1 : Text) -> $result : Text
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the background color property of the banner.
	
	  // $1 : (text) (optional) color
	  // $0 : (text) (return) current background color
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_bannerBGColor 
	Else 
		AJUIB_GetSet_bannerBGColor ($param1)
	End if 
	
Function BannerHeight($param1 : Integer) -> $result : Integer
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the height property of the banner.
	
	  // $1 : (longint) (optional) height
	  // $0 : (longint) (return) current height of the banner
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_bannerHeight 
	Else 
		AJUIB_GetSet_bannerHeight ($param1)
	End if 
	
Function BannerName($param1 : Text) -> $result : Text
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the name property of the banner.
	
	  // $1 : (text) (optional) name
	  // $0 : (text) (return) current name
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_name 
	Else 
		AJUIB_GetSet_name ($param1)
	End if 
	
Function BannerPosition($param1 : Text) -> $result : Text
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the position property of the banner (banner : cr type only).
	
	  // $1 : (text) (optional) position
	  // $0 : (text) (return) current position
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_bannerPosition 
	Else 
		AJUIB_GetSet_bannerPosition ($param1)
	End if 
	
Function BannerType($param1 : Text) -> $result : Text
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the type property of the banner.
	
	  // $1 : (text) (optional) type
	  // $0 : (text) (return) current type
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_bannerType 
	Else 
		AJUIB_GetSet_bannerType ($param1)
	End if 
	
Function BannerWidth($param1 : Integer) -> $result : Integer
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the width property of the banner.
	
	  // $1 : (longint) (optional) width
	  // $0 : (longint) (return) current width of the banner
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_bannerWidth 
	Else 
		AJUIB_GetSet_bannerWidth ($param1)
	End if 
	
Function BorderColor($param1 : Text) -> $result : Text
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the border color property of the banner.
	
	  // $1 : (text) (optional) color
	  // $0 : (text) (return) current border color
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_borderColor 
	Else 
		AJUIB_GetSet_borderColor ($param1)
	End if 
	
Function BorderSize($param1 : Integer) -> $result : Integer
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the border size property of the banner.
	
	  // $1 : (longint) (optional) size
	  // $0 : (longint) (return) current border size
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_borderSize 
	Else 
		AJUIB_GetSet_borderSize ($param1)
	End if 
	
Function cornerRadius($param1 : Integer) -> $result : Integer
	  // ----------------------
	  // Banner
	  // ----------------------
	  // Getter/Setter for the corner rounding property of the banner.
	
	  // $1 : (longint) (optional) corner radius
	  // $0 : (longint) (return) current corner radius
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_cornerRadius 
	Else 
		AJUIB_GetSet_cornerRadius ($param1)
	End if 
	
Function SpinnerScale($param1 : Real) -> $result : Real
	  // ----------------------
	  // Spinner
	  // ----------------------
	  // Getter and setter for the scale to apply for the spinner size
	
	  // $1 : (real) (optional) scale
	  // $0 : (real) (return) current scale
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_spinnerScale 
	Else 
		AJUIB_GetSet_spinnerScale ($param1)
	End if 
	
Function WindowSpinnerSide($param1 : Text) -> $result : Text
	  // ----------------------
	  // Spinner
	  // ----------------------
	  // Getter and setter for the spinner side (only windowSpinner type)
	
	  // $1 : (text) (optional) side
	  // $0 : (text) (return) current spinner side
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_windowSpinnerSide 
	Else 
		AJUIB_GetSet_windowSpinnerSide ($param1)
	End if 
	
Function IsPicture($param1 : Boolean) -> $result : Boolean
	  // ----------------------
	  // Picture
	  // ----------------------
	  // Getter/Setter to use a picture instead of the text in the banner (banner : window type only).
	
	  // $1 : (boolean) (optional) show picture ?
	  // $0 : (boolean) (return) picture currently used ?
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_isPicture 
	Else 
		AJUIB_GetSet_isPicture ($param1)
	End if 
	
Function PicturePath($param1 : Text) -> $result : Text
	  // ----------------------
	  // Picture
	  // ----------------------
	  // Getter/Setter for the path of the picture file in the resources folder.
	
	  // $1 : (text) (optional) file path
	  // $0 : (text) (return) current picture file path
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_picturePath 
	Else 
		AJUIB_GetSet_picturePath ($param1)
	End if 
	
Function RibbonTargetCoordinates($param1 : Integer; $param2 : Integer; $param3 : Integer; $param4 : Integer) -> $result : Object
	  // ----------------------
	  // Ribbon
	  // ----------------------
	  // Getter and Setter to put the specific coordinates of an object to place the ribbon
	
	  // $1 : (longint) (optional) left
	  // $2 : (longint) (optional) top 
	  // $3 : (longint) (optional) right
	  // $4 : (longint) (optional) bottom
	  // $0 : (object) (return) current coordinates
	
	
	Case of 
		: (Count parameters=0)
			$result:=AJUIB_GetSet_RibbonTargetCoord 
		: (Count parameters=1)
			AJUIB_GetSet_RibbonTargetCoord ($param1)
		: (Count parameters=2)
			AJUIB_GetSet_RibbonTargetCoord ($param1;$param2)
		: (Count parameters=3)
			AJUIB_GetSet_RibbonTargetCoord ($param1;$param2;$param3)
		: (Count parameters=4)
			AJUIB_GetSet_RibbonTargetCoord ($param1;$param2;$param3;$param4)
	End case 
	
Function RibbonTargetName($param1 : Text) -> $result : Text
	  // ----------------------
	  // Ribbon
	  // ----------------------
	  // Getter and Setter to specify an object who will receive the ribbon
	
	  // $1 : (text) (optional) form object name
	  // $0 : (text) (return) current form object name
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_RibbonTargetName 
	Else 
		AJUIB_GetSet_RibbonTargetName ($param1)
	End if 
	
Function Message($param1 : Text) -> $result : Text
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the message property of the banner.
	
	  // $1 : (text) (optional) message
	  // $0 : (text) (return) current message in the banner
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_message 
	Else 
		AJUIB_GetSet_message ($param1)
	End if 
	
Function TextColor($param1 : Text) -> $result : Text
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text color property.
	
	  // $1 : (text) (optional) color
	  // $0 : (text) (return) current text color
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_textColor 
	Else 
		AJUIB_GetSet_textColor ($param1)
	End if 
	
Function TextFontName($param1 : Text) -> $result : Text
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text font name property.
	
	  // $1 : (text) (optional) font name
	  // $0 : (text) (return) current font name
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_textFontName 
	Else 
		AJUIB_GetSet_textFontName ($param1)
	End if 
	
Function TextFontSize($param1 : Integer) -> $result : Integer
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text font size property.
	
	  // $1 : (text) (optional) font size
	  // $0 : (text) (return) current font size
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_textFontSize 
	Else 
		AJUIB_GetSet_textFontSize ($param1)
	End if 
	
Function TextFontStyle($param1 : Text) -> $result : Text
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text font style property.
	
	  // $1 : (text) (optional) font style
	  // $0 : (text) (return) current font style
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_textFontStyle 
	Else 
		AJUIB_GetSet_textFontStyle ($param1)
	End if 
	
Function TextFontWeight($param1 : Text) -> $result : Text
	  // ----------------------
	  // Text
	  // ----------------------
	  // Getter/Setter for the text font weight property.
	
	  // $1 : (text) (optional) font weight
	  // $0 : (text) (return) current font weight
	
	
	If (Count parameters=0)
		$result:=AJUIB_GetSet_textFontWeight 
	Else 
		AJUIB_GetSet_textFontWeight ($param1)
	End if 