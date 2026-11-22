//%attributes = {"invisible":true}
  // AJUIB_GetSet_message ( $message_t ) -> return
  //
  // $message_t : (text) message
  // return : (text) (return) message in the banner
  //
  // Getter/Setter for the message property of the banner.


#DECLARE($param1 : Text) -> $result : Text

If (False)
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

var $message_t : Text

If (Count parameters=0)
	$result:=This.text.message
Else 
	$message_t:=$param1
	This.text.message:=$message_t
End if 