//%attributes = {"invisible":true}
  // AJUIB_GetSet_RibbonTargetCoord ( {$left ; $top ; $right ; $bottom} ) -> return
  //
  // $1 : (longint) (optional) left
  // $2 : (longint) (optional) top 
  // $3 : (longint) (optional) right
  // $4 : (longint) (optional) bottom
  // return : (object) (return) current coordinates
  //
  // Getter and Setter to put the specific coordinates of an object to place the ribbon

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 09.09.19, 13:45:34
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_RibbonTargetCoord
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_LONGINT:C283($1;$2;$3;$4)
C_OBJECT:C1216($0)

If (Count parameters:C259=0)
	$0:=This:C1470.banner.ribbon.targetCoordinates
Else 
	This:C1470.banner.ribbon.targetCoordinates.left:=$1
	This:C1470.banner.ribbon.targetCoordinates.top:=$2
	This:C1470.banner.ribbon.targetCoordinates.right:=$3
	This:C1470.banner.ribbon.targetCoordinates.bottom:=$4
End if 

