//%attributes = {"invisible":true}
  // AJUIB_initFormulas ( $banner_options_obj ) 
  //
  // $banner_options_obj : (object) banner object
  //
  // This method init the formulas for a New AJUI_banner

#DECLARE($param1 : Object)

If (False)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:33:15
	  // ----------------------------------------------------
	  // Method: AJUIB_initFormulas
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

var $banner_options_obj : Object

$banner_options_obj:=$param1

  //function
$banner_options_obj.DrawBanner:=Formula(AJUIB_drawBanner )
$banner_options_obj.StopSpinner:=Formula(AJUIB_stopSpinnerAnimation )
$banner_options_obj.HideBanner:=Formula(AJUIB_hideBanner )
  //window
$banner_options_obj.WindowRef:=Formula(AJUIB_GetSet_windowRef )
$banner_options_obj.WindowBGColor:=Formula(AJUIB_GetSet_windowBGColor )

  //banner
$banner_options_obj.BannerName:=Formula(AJUIB_GetSet_name )
$banner_options_obj.BannerType:=Formula(AJUIB_GetSet_bannerType )
$banner_options_obj.BannerBGColor:=Formula(AJUIB_GetSet_bannerBGColor )
$banner_options_obj.BannerHeight:=Formula(AJUIB_GetSet_bannerHeight )
$banner_options_obj.BannerWidth:=Formula(AJUIB_GetSet_bannerWidth )
$banner_options_obj.BorderColor:=Formula(AJUIB_GetSet_borderColor )
$banner_options_obj.BorderSize:=Formula(AJUIB_GetSet_borderSize )
$banner_options_obj.cornerRadius:=Formula(AJUIB_GetSet_cornerRadius )
$banner_options_obj.BannerPosition:=Formula(AJUIB_GetSet_bannerPosition )

  //spinner
$banner_options_obj.SpinnerScale:=Formula(AJUIB_GetSet_spinnerScale )
$banner_options_obj.WindowSpinnerSide:=Formula(AJUIB_GetSet_windowSpinnerSide )

  //picture
$banner_options_obj.IsPicture:=Formula(AJUIB_GetSet_isPicture )
$banner_options_obj.PicturePath:=Formula(AJUIB_GetSet_picturePath )

  //text
$banner_options_obj.Message:=Formula(AJUIB_GetSet_message )
$banner_options_obj.TextColor:=Formula(AJUIB_GetSet_textColor )
$banner_options_obj.TextFontName:=Formula(AJUIB_GetSet_textFontName )
$banner_options_obj.TextFontSize:=Formula(AJUIB_GetSet_textFontSize )
$banner_options_obj.TextFontWeight:=Formula(AJUIB_GetSet_textFontWeight )
$banner_options_obj.TextFontStyle:=Formula(AJUIB_GetSet_textFontStyle )

  //targetRibbon
$banner_options_obj.RibbonTargetName:=Formula(AJUIB_GetSet_RibbonTargetName )
$banner_options_obj.RibbonTargetCoordinates:=Formula(AJUIB_GetSet_RibbonTargetCoord )
