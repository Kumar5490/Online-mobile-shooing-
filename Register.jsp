<html>
 <head>
  <title>Register page</title>
   <script language="javascript">
 function validate()
 {
 if(document.regform.email.value==""||document.regform.email.value=="email")
   {
    alert("EmailId must be Provided");
    document.regform.email.value="";
    document.regform.email.focus();
    return false;
     }
 if(document.regform.Password.value==""||document.regform.Password.value==
         "Password")
    {
      alert("Password must be Provided");
      document.regform.Password.value="";
      document.regform.Password.focus();
      return false;
    }
    if(document.regform.RePassword.value==""||document.regform.RePassword.
            value=="RePassword")
    {
      alert("Retype Password must be Provided");
      document.regform.RePassword.focus();
      return false;
    }
    if(document.regform.Password.value!=document.regform.RePassword.value)
    {
     alert("Password Must Be Same");
     document.regform.Password.value="";
     document.regform.RePassword.focus();
     return false;
    } 
   if(document.regform.Name.value==""||document.regform.Name.value=="Name")
    {
     alert("Name Must Be Provided");
     document.regform.Name.value="";
     document.regform.Name.focus();
     return false;
    } 
    if(document.regform.Gender.value==""||document.regform.Gender.value==
            "Gender")
    {
     alert("Gender Must Be Provided");
     document.regform.Gender.value="";
     document.regform.Gender.focus();
     return false;
    } 
    return true;
   }
  </script>
  <link rel="stylesheet" type="text/css" href="style-login.css">
  </head>
 <body  onload="document.form1.email.focus()">
  <div class="logo" style="width: 150px; height:10px; text-align: center;">
 RockShop<sub>.com</sub></div>
    
<form name="regform"method="post"onsubmit="return validate()"action="reg.jsp">
  <div class="mid"><div class="design">
   <h1>Create Account</h1>
  <div><label>Email:*</label>
  <input type="text" name="email" size="20" placeholder="Enter your Email Id"
         value="" style="margin-left: 60px; height: 25px;">
  </div>
  <div><label>Password:*</label>
  <input type="password" name="Password" placeholder="Enter your password"
         value="" size="20" style="margin-left: 28px; height: 25px;">
  </div>
  <div><label>Re-Password:*</label>
   <input type="password" name="RePassword" placeholder="Retype your Password"
          value="" size="20" style="height: 25px;">
  </div>
  <div><label>Name:*</label>
  <input type="text" name="Name" size="20" placeholder="Enter your Name"
         style="margin-left: 60px; height: 25px;">
  </div>
  <div><label>Gender:*</label>
  <input type="radio" name="Gender" value="Male" style="margin-left: 50px;">
    Male<input type="radio" name="Gender" value="Female">Female
  </div>
 <div><label>Mobile:*</label>
 <input type="text" name="Mobile" size="20" placeholder="Enter Mobile Number"
          style=" margin-left: 60px;height: 25px;">
 </div> 
  
 <div><input type="submit" value="Create your RockShop account" size="20"
  style="height: 40px;width: 350px; margin-left: 10px;font-weight: bolder;">
 </div>
 <div> Already have an Account? <a href="login.jsp">Sign In</a></div>
</div></div>
</form>
<div class="bottom">
<table><tr><td style="margin-left: 20px; margin-right: 20px;">
            <a href="">Condition of use</a></td>
           <td style="margin-left: 20px; margin-right: 20px;">
               <a href="">Privacy Policy</a></td>
           <td style="margin-left: 20px; margin-right: 20px;">
              <a href="">help</a></td></tr></table></div>
</body>
</html>
