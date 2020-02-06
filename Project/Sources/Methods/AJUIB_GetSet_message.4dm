//%attributes = {"invisible":true}
  // AJUIB_GetSet_message ( $message_t ) -> return
  //
  // $message_t : (text) message
  // return : (text) (return) message in the banner
  //
  // Getter/Setter for the message property of the banner.


If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): Gary Criblez
	  // Date and time: 10.04.19, 14:12:02
	  // ----------------------------------------------------
	  // Method: AJUIB_GetSet_message
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
End if 

C_TEXT:C284($0;$1;$message_t)

If (Count parameters:C259=0)
	$0:=This:C1470.text.message
Else 
	$message_t:=$1
	This:C1470.text.message:=$message_t
End if 