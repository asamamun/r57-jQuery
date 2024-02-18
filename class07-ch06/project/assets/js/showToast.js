/*
<link rel="stylesheet" href="assets/css/jquery.toast.min.css">
<script src="assets/js/jquery-3.6.0.min.js"></script>
<script src="assets/js/jquery.toast.min.js"></script>
heading: Information | Error | Success | Warning
icon : info | error | success | warning
type: any color value
position : 
bottom-left value to show the toast at bottom left position
bottom-right value to show the toast at bottom right position
bottom-center value to..
top-right value to..
top-left value to..
top-center value to..
mid-center value to..
{ top: '-', bottom: '-', left: '-', right: '-' } javascript object with positioning properties as you set in CSS
stack: how many toast messages at a time
*/
function showToast(position, message, type,icon, duration) {
    $.toast({
      heading: icon,
      text: message,
      icon: icon,
      showHideTransition: 'slide',
      bgColor: type,
      textColor: '#eee',
      allowToastClose: false,
      hideAfter: duration,
      stack: 5,
      textAlign: 'left',
      position: position,
    });    
  }