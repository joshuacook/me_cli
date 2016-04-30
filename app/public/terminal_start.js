$('#terminal_container').height($(document).height());
var welcome_message = 'Welcome to joshuacook.me  0.1!';
welcome_message += '<br><br>';
welcome_message += '********************************************************************<br>'
welcome_message += '********************************************************************<br>'
welcome_message += '***&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The website is now operational.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;***<br>'
welcome_message += '***&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Configuration has completed.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;***<br>'
welcome_message += '***&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please check log for details.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;***<br>'
welcome_message += '********************************************************************<br>'
welcome_message += '********************************************************************<br>'
welcome_message += '<br><br>';
welcome_message += "Type 'help' for usage.";
// welcome_message += 'Please login by typing: $ login username <br><br>If this is your first visit, you may select any username.'
$('#terminal_container').terminal('server', {hello_message : welcome_message });

