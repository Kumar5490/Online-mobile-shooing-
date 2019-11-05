<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" type="text/css" href="style-login.css">
       <script type="text/javascript">
         function validate()
          {
             email=document.checkorder.email.value;
             Password=document.checkorder.Password.value;
            if(email==""||email==null)
              {
                 alert("Please Enter Your EmailId");
                 document.checkorder.email.focus();
                 return false;
               }
             if(OrderId==""||OrderId==null)
               {
                  alert("Please Enter your OrderId");
                  document.checkorder.OrderId.focus();
                  return false;
                }
                return true;        
           }
        </script>
     <title></title>
     
     </head>
<body background="beige">
<div class="logo" style="width: 150px; height:10px; margin-left: 550px;">
 RockShop<sub>.com</sub></div>
<form name="checkorder" method="post" action="checkordervalidate.jsp" 
      onsubmit="return validate()">
<div class="mid"><div class="design"><h1>Check Your current order</h1>
<div class="email"><label>Email:</label>
<input type="text" name="email" maxlength="100" size="26" 
placeholder="Please Enter your valid Email Id"  tabindex="1"
style="margin-left: 30px; height: 25px;"></div>
<div class="OrderId"><label>OrderId:</label>
 <input type="text" name="OrderId" size="26" 
   placeholder="Please Enter your OrderId" tabindex="2" style="height:25px;">
</div>
<div>
<input id="button" type="submit" value="Enter"name="B1" 
       style="height:35px;width:100px;margin-left:80px;font-weight:bolder;">
</div></div></div>
 </form></body></html>

