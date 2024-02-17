This is the home page.<hr>
<h3>Parameters passed to error callback</h3>
jQuery makes three parameters available to the error callback. These are the XMLHttpRequestobject that was used 
to send a request, a string indicating the type of error, and an exception 
(if any) from the JavaScript side. 
The second parameter is a string that can be one ofthese: timeout, error, notmodified, parsererror, or null.