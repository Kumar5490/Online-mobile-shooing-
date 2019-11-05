<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style-login.css">
           <script language="javascript">
 function validate()
 {
 if(document.forgetpsw.email.value==""||document.forgetpsw.email.value==null)
     {
      alert("Please Enter your Registered EmailId");
      document.forgetpsw.email.focus();
      return false;
     }
if(document.forgetpsw.Mobile.value==""||document.forgetpsw.Mobile.value==null)
     {
      alert("Please Enter your Registered Mobile Number");
      document.forgetpsw.Mobile.focus();
      return false;
     }

   if(document.forgetpsw.npwd.value==""||document.forgetpsw.npwd.value==null)
    {
      alert("New Password must be Provided");
      document.forgetpsw.npwd.value="";
      document.forgetpsw.npwd.focus();
      return false;
    }
    if(document.forgetpsw.RePassword.value==""||
            document.forgetpsw.RePassword.value=="RePassword")
    {
       alert("Retype Password must be Provided");
       document.forgetpsw.RePassword.value="";
       document.forgetpsw.RePassword.focus();
      return false;
    }
   
    return true;
    }
    </script>
    </head>
<body onload="document.forgetpsw.email.focus()">
    <div class="logo" style="width: 150px; height:10px; text-align: center;">
 RockShop<sub>.com</sub></div>
    
<form name="forgetpsw" method="post" onsubmit="return validate()"
      action="forgetpwdvalidate.jsp" >
    <div class="mid"><div class="design">
            <h1>Find Your Password</h1>
   <div>
     <label>Email:</label>
    <input type=text name="email" placeholder="Enter your registered EmailId"
           style="height: 25px;width: 250px;">
  </div>
  <div>
     <label>Mobile:</label>
 <input type=text name="Mobile" placeholder="Enter your registered Mobile No"
           style="height: 25px;width: 250px;">
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
  <input type="submit" value="Submit" style="height: 40px;
         width: 200px; margin-left: 50px;">
 </div>
 </div></div>
</form>
</body>
</html>