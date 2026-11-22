//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerBGColor ( $BGColor_t ) -> return
  //
  // $BGColor_t : (text) color
  // return : (text) (return) background color
  //
  // Getter/Setter for the background color property of the banner.

#DECLARE($param1 : Text) -> $result : Text

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 13:55:06
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_bannerBGColor
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $BGColor_t : Text

If (Count parameters=0)
	$result:=This.banner.bannerBGColor
Else 
	$BGColor_t:=$param1
	If ($BGColor_t#"")
		This.banner.bannerBGColor:=$BGColor_t
	Else 
		This.banner.bannerBGColor:="none"
	End if 
End if 