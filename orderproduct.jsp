<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Product</title>
        <link rel="stylesheet" type="text/css" href="style-login.css">
           <script type="text/javascript">
         function validate()
          {
             Name=document.order.Name.value;
             pcode=document.order.pcode.value;
              Address=document.order.Address.value;     
              City=document.order.City.value;
              State=document.order.State.value;
             Mobile=document.order.Mobile.value;   
        if(Name==""||Name==null)
              {
                 alert("Please Enter Your Name");
                 document.order.Name.focus();
                 return false;
               }
             if(pcode==""||pcode==null)
               {
                  alert("Please Enter your Valid Pin Code");
                  document.form.pcode.focus();
                  return false;
                }
                if(Address==""||Address==null)
              {
                 alert("Please Enter Your address");
                 document.order.Address.focus();
                 return false;
               }
               if(City==""||City==null)
              {
                 alert("Please Enter Your City");
                 document.order.City.focus();
                 return false;
               }
               if(State==""||State==null)
              {
                 alert("Please Enter Your State");
                 document.order.Address.focus();
                 return false;
               }
            if(Mobile==""||Mobile==null)
              {
                 alert("Please Enter Your Mobile no");
                 document.order.Mobile.focus();
                 return false;
               }
            
                return true;        
           }
        </script>
        <style>
            .selectstyle{
            font-size: 20px;width: 80px;margin-left: 20px; margin-right: 20px;
            }
        </style>
    
    </head>
    <body background="beige">
<form name="order" method="get" 
      action="confirmorder.jsp" onsubmit="return validate()">
 <div class="mid" style="width: 500px;">
 <div class="design" style="background: #006666;">
<%@page import="java.sql.*" %>
 <%String email=(String)session.getAttribute("email");
  session.setAttribute("email",email); %>
                    <%
      String Prodname=request.getParameter("Prodname");
      out.println(Prodname);
      String Price=request.getParameter("Price"); 
      out.println(Price);
      session.setAttribute("Price", Price);
      session.setAttribute("Prodname", Prodname);
                %>
       <h2>  Please select Quantity and color</h2>
       <span><label>Qty:</label>
       <select class="selectstyle" name="Qty"><option value="1">1</option>
         <option value="2">2</option></select></span>
       <span><label>Color:</label>
       <select class="selectstyle" name="color">
        <option value="Black">Black</option>
        <option value="White">White</option>
        <option value="Red">Red</option>
       </select></span>
       <h2>Delivery Address</h2>
       <div><label>Name:*</label>
       <input type="text" name="Name" size="30" placeholder="Enter your Name"
              style="margin-left: 30px; height: 25px;">
       </div>
       <div><label>Pin Code:*</label>
        <input type="text" name="pcode" size="30" 
              placeholder="Enter your valid Pin Code" style="height: 25px;">
       </div>
       <div>          
         <label>Address:*</label>
      <input type="text" name="Address" size="30"placeholder="Adress line 1"
             style="margin-left: 10px; height: 25px;">
      <input type="text" name="Addressalt" size="30"
     placeholder="Adress line 2 " style="margin-left: 100px; height: 25px;">
      </div>
      <div>
       <label>City:*</label>
    <input type="text" name="City" size="30"placeholder="Enter your City Name"
           style="margin-left: 40px; height: 25px;">
      </div>
      <div><label>State & UT:*</label>
       <select size="1" name="State" tabindex="9" style="height: 30px;
               font-size: 20px;">
         <option value="Andhra Pradesh">Andhra Pradesh</option>
         <option value="Arunachal Pradesh">Arunachal Pradesh</option> 
         <option value="Assam">Assam</option>
         <option value="Bihar">Bihar</option>
         <option value="Chandigarh">Chandigarh</option>
         <option value="Chhattisgarh">Chhattisgarh</option>
         <option value="Delhi">Delhi</option>
         <option value="Goa">Goa</option>
         <option value="Gujarat">Gujarat</option>
         <option value="Haryana">Haryana</option>
         <option value="Himachal Pradesh">Himachal Pradesh</option>
         <option value="Jammu & Kashmir">Jammu & Kashmir</option>
         <option value="Jharkhand">Jharkhand</option>
         <option value="Karnataka">Karnataka</option>
         <option value="Kerala">Kerala</option>
         <option value="Madhya Pradesh">Madhya Pradesh</option>
         <option value="Maharashtra">Maharashtra</option>
         <option value="Manipur">Manipur</option>
         <option value="Meghalaya">Meghalaya</option>
         <option value="Mizoram">Mizoram</option>
         <option value="Nagaland">Nagaland</option>
         <option value="Odisha">Odisha</option>
         <option value="Punjab">Punjab</option>
         <option value="Rajasthan">Rajasthan</option>
         <option value="Sikkim">Sikkim</option>
         <option value="Tamil Nadu">Tamil Nadu</option>
         <option value="Telangana">Telangana</option>
         <option value="Tripura">Tripura</option>
         <option value="Uttar Pradesh">Uttar Pradesh</option>
         <option value="Uttrakhand">Uttrakhand</option>
         <option value="West Bengal">West Bengal</option>
        </select>
                    
       </div>
       <div><label>Country:*</label>
         <select size="1" name="Country" tabindex="9" 
                 style="margin-left:25px; font-size: 20px;">
          <option selected="India" value="India">India</option></select>
       </div>
       <div>
        <label>Mobile No:*</label>
        <input type="text" name="Mobile" size="30" 
        placeholder="Enter your Mobile Number"style="height: 25px;">
       </div>
       <div>
         <input type="submit" value="Process to Payment" 
     style="margin-left: 50px; width: 350px; height: 30px; font-size: 20px;">
       </div>
                
       </div></div>
     </form>
</body>
</html>
