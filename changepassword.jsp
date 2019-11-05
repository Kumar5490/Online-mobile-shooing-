<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <link rel="stylesheet" type="text/css" href="style-login.css"></head>
<body>
<form name="changepassword" method="post" action="changepwdvalidate.jsp" >
 <div class="mid"><div class="design">
 <h1>Change Your Password</h1>
 <div>
 <label>Email:</label>
 <input type=text name="email" placeholder="Enter your registered EmailId"
        style="height: 25px;width: 250px;">
 </div>
 <div>
  <label>Current Password:</label>
<input type="password"name="Password"placeholder="Enter your Current Password"
       style="height: 25px;width: 250px; margin-left: 60px;">
</div>
<div>
 <label>New Password:</label>
 <input type="password" name="npwd" placeholder="Enter your new Password"
        style="height: 25px;width: 250px; margin-left: 60px;">
</div>
<div>
 <label>Confirm Password:</label>
 <input type="password" name="RePassword" placeholder="Confirm Password"
        style="height: 25px;width: 250px; margin-left: 60px;">
</div>
<div>
  <input type="submit" value="Submit" style="height: 40px; width: 200px;
         margin-left: 50px;">
</div>
</div></div>
</form>
</body>
</html>
       