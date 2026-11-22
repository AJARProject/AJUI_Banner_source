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

#DECLARE($param1 : Integer; $param2 : Integer; $param3 : Integer; $param4 : Integer) -> $result : Object

If (False)
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


If (Count parameters=0)
	$result:=This.banner.ribbon.targetCoordinates
Else 
	This.banner.ribbon.targetCoordinates.left:=$param1
	This.banner.ribbon.targetCoordinates.top:=$param2
	This.banner.ribbon.targetCoordinates.right:=$param3
	This.banner.ribbon.targetCoordinates.bottom:=$param4
End if 

