<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            .middle
            {
               margin-left: 400px;
               margin-right: 400px;
               height: 550px;
               color: wheat;
               border-top:3px solid brown;
               border-bottom: 3px solid brown;
               border-left: 3px solid brown;
               border-right: 3px solid brown;
               background: #330000;
               font-size: 30px;
            }
            label{
                margin-left: 50px;
                margin-bottom: 30px;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title
         
    </head>
<body background="./Mobile/20151010211509.jpg">
<form name="creditcard"method="post">
<div style="color:red;font-weight:bolder;text-align:center;font-size:25px;">
    This site provide in this time  only Cash on Delivery</div>
 <div style="color:#00cc00; text-align: center;">Go to Back and select 
     <a href="cod.jsp">COD</a></div>
 <div class="middle">
 <div><label>Credit Card Type:</label></div>        
 <div><label><select size="1" name="creditcard" 
                     style="width: 400px;height: 35px;font-size: 20px;">
         <option value="Select Card">Select Your Credit Card</option>
         <option value="Master Card">Master Card</option>
         <option value="Mastro Card">Mastro Card</option>
         <option value="Visa Card">Visa Card</option> 
         <option value="Rupay Card">Rupay Card</option>
       </select></label></div>
 <div><label>Card Number:</label></div>
 <div><label><input type="text" name="cardno" size="25"  
          placeholder="Enter your valid card Number"
        style="width: 400px;height: 35px;font-size: 20px;"></label></div>
 <div><label>CVV:
     <input type="text" name="cvv" size="5" style="width: 100px;height: 25px;
            font-size: 25px;" placeholder="CVV"></label>
      <a href="" style="color:greenyellow;">help?</a></div>
  <div><label>Expiry Date:</label></div>
  <div><label>
  <select size="1"name="Month"style="height:35px;width:150px;font-size:20px;">
         <option selected value="month">Select Month</option>
     <script language="javascript">
   for(x=1;x<=12;x++)
   {
    if(x<10)
    {
     document.write("<option value="+"0"+x+">"+"0"+x+"</option>");
    }
    else
    {
     document.write("<option value="+x+">"+x+"</option>");
    }
   }
   </script>
  </select></label>
  <label>
 <select size="1"name="year" style="height:35px;width:150px;font-size:20px;">
          <option selected value="year">Select Year</option>
          <option value="2016">2016</option>
          <option value="2017">2017</option>
          <option value="2018">2018</option>
          <option value="2019">2019</option>
          <option value="2020">2020</option>          
          <option value="2021">2021</option>
       </select></label></div>
  <div><label>Issuing Bank Name:</label></div>
  <div><label>
     <select size="1" name="bankname"style="height: 35px;width:400px;
             font-size: 20px; margin-bottom: 30px;">
        <option selected value="bankname">Select Issuing Bank Name</option>
        <option value="SBI">State Bank of India</option>
        <option value="BOI">Bank of India</option>
        <option value="PNB">Punjab National Bank</option>
        <option value="UBI">Union Bank of India</option>
        <option value="IB">Indian Bank</option>
        <option value="HDFC">HDFC</option>          
        <option value="ICICI">Indian</option>
        <option value="BOM">Bank of Maharastra</option>
        <option value="CBI">Central Bank of India</option>
        <option value="CBI">Corporation Bank of India</option> 
      </select></label></div>
  <div>
      <input face=impact color="Red" type="button" value="Proceed"
             style="font-size: 30px; margin-left: 50px;">
      <input face=impact color="blue" type="button" value="Cancel"
             style="font-size: 30px; margin-left:70px;"></div>
        </div>
        </form>
    </body>
</html>
