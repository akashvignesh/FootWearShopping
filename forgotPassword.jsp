<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordAction.jsp " method="post">
  <input type = "email" name="email" palceholder= "Enter Email" required>
  <input type = "number" name="mobileNumber" palceholder= "Enter Mobile Number" required>
  <select value ="securityQuestion">
  <option value="f">f</option>
  <option value="l">l</option>
  <option value="f">f</option>
  <option value="e">e</option>
  </select>
<input type = "text" name="answer" palceholder= "Enter Answer" required>
<input type = "password" name="newPassword" palceholder= "Enter your new Password" required>
<input type ="submit " value="save">



  </form>

     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg.request.getParameter("msg");
  if("done".equals(msg))
  {
    %>
   
<h1>Password Changed Successfully!</h1>
<%}%>
<%
if("invalid".equals(msg))
{%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%}%>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>