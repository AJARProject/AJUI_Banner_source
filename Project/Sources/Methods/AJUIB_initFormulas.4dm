//%attributes = {"invisible":true}
  // AJUIB_initFormulas ( $banner_options_obj ) 
  //
  // $banner_options_obj : (object) banner object
  //
  // This method init the formulas for a New AJUI_banner

If (False:C215)
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

C_OBJECT:C1216($1;$banner_options_obj)

$banner_options_obj:=$1

  //function
$banner_options_obj.DrawBanner:=Formula:C1597(AJUIB_drawBanner )
$banner_options_obj.StopSpinner:=Formula:C1597(AJUIB_stopSpinnerAnimation )
$banner_options_obj.HideBanner:=Formula:C1597(AJUIB_hideBanner )
  //window
$banner_options_obj.WindowRef:=Formula:C1597(AJUIB_GetSet_windowRef )
$banner_options_obj.WindowBGColor:=Formula:C1597(AJUIB_GetSet_windowBGColor )

  //banner
$banner_options_obj.BannerName:=Formula:C1597(AJUIB_GetSet_name )
$banner_options_obj.BannerType:=Formula:C1597(AJUIB_GetSet_bannerType )
$banner_options_obj.BannerBGColor:=Formula:C1597(AJUIB_GetSet_bannerBGColor )
$banner_options_obj.BannerHeight:=Formula:C1597(AJUIB_GetSet_bannerHeight )
$banner_options_obj.BannerWidth:=Formula:C1597(AJUIB_GetSet_bannerWidth )
$banner_options_obj.BorderColor:=Formula:C1597(AJUIB_GetSet_borderColor )
$banner_options_obj.BorderSize:=Formula:C1597(AJUIB_GetSet_borderSize )
$banner_options_obj.cornerRadius:=Formula:C1597(AJUIB_GetSet_cornerRadius )
$banner_options_obj.BannerPosition:=Formula:C1597(AJUIB_GetSet_bannerPosition )

  //spinner
$banner_options_obj.SpinnerScale:=Formula:C1597(AJUIB_GetSet_spinnerScale )
$banner_options_obj.WindowSpinnerSide:=Formula:C1597(AJUIB_GetSet_windowSpinnerSide )

  //picture
$banner_options_obj.IsPicture:=Formula:C1597(AJUIB_GetSet_isPicture )
$banner_options_obj.PicturePath:=Formula:C1597(AJUIB_GetSet_picturePath )

  //text
$banner_options_obj.Message:=Formula:C1597(AJUIB_GetSet_message )
$banner_options_obj.TextColor:=Formula:C1597(AJUIB_GetSet_textColor )
$banner_options_obj.TextFontName:=Formula:C1597(AJUIB_GetSet_textFontName )
$banner_options_obj.TextFontSize:=Formula:C1597(AJUIB_GetSet_textFontSize )
$banner_options_obj.TextFontWeight:=Formula:C1597(AJUIB_GetSet_textFontWeight )
$banner_options_obj.TextFontStyle:=Formula:C1597(AJUIB_GetSet_textFontStyle )

  //targetRibbon
$banner_options_obj.RibbonTargetName:=Formula:C1597(AJUIB_GetSet_RibbonTargetName )
$banner_options_obj.RibbonTargetCoordinates:=Formula:C1597(AJUIB_GetSet_RibbonTargetCoord )
