//%attributes = {"invisible":true}
  // AJUIB_GetSet_bannerBGColor ( $BGColor_t ) -> return
  //
  // $BGColor_t : (text) color
  // return : (text) (return) background color
  //
  // Getter/Setter for the background color property of the banner.

If (False:C215)
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

C_TEXT:C284($0;$1;$BGColor_t)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.bannerBGColor
Else 
	$BGColor_t:=$1
	If ($BGColor_t#"")
		This:C1470.banner.bannerBGColor:=$BGColor_t
	Else 
		This:C1470.banner.bannerBGColor:="none"
	End if 
End if 