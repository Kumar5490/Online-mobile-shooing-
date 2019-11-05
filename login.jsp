<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" type="text/css" href="style-login.css">
       <script type="text/javascript">
         function validate()
          {
             email=document.form.email.value;
             Password=document.form.Password.value;
            if(email==""||email==null)
              {
                 alert("Please Enter Your EmailId");
                 document.form.email.focus();
                 return false;
               }
             if(Password==""||Password==null)
               {
                  alert("Please Enter your Password");
                  document.form.Password.focus();
                  return false;
                }
                return true;        
           }
        </script>
     <title>Login Page</title>
     
     </head>
<body background="beige">
 <div class="logo" style="width: 150px; height:10px; margin-left: 550px;">
  RockShop<sub>.com</sub></div>
<form name="form"method="post"action="Validate.jsp"
      onsubmit="return validate()">
 <div class="mid"><div class="design"><h1>Login here </h1>
 <div class="email">
  <label for="email">  Email:</label>
  <input type="text" name="email" maxlength="100" size="26" 
  placeholder="Please Enter your valid Email Id"  tabindex="1" 
  style="margin-left: 30px; height: 25px;">
 </div>
 <div class="pass">
  <label for="password">Password:</label>
  <input type="password" name="Password" size="26" 
  placeholder="Please Enter your password" tabindex="2" style="height: 25px;">
 <div style="float: right; margin-right: 20px;">
     <a href="forgetpassword.jsp">ForgotPassword?</a></div>
 </div>
 <div>
  <input id="button" type="submit" value="Login"name="B1" 
  style="height:35px;width:100px;margin-left:30px;font-weight: bolder;">
 </div>
 <div style="margin-left: 25px;">
   <label><h4>----------New to RockShop?-------</h4></label></div>
 <div>
   <a href="Register.jsp">
    <input type="button" value="Register" name="r1" style="height: 35px;
          width: 300px;margin-left: 30px; font-weight: bolder;"></a>
  </div>
 <p style="color: black;">By signing you are agreeing to our <a href="">
         Condition of Use</a> and our <a href="">Privacy policy</a></p>
   </div></div>
  </form> 
  <div class="bottom">
   <table><tr><td><a href="" style="margin-left: 20px; margin-right: 20px;">
                    Condition of use</a></td>
              <td><a style="margin-left: 20px; margin-right: 20px;" href="">
                       Privacy Policy</a></td>
              <td><a href="" style="margin-left: 20px; margin-right: 20px;">
                      help</a></td></tr></table></div>
</body>
</html>

