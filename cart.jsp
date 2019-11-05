<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Product</title>
        <link rel="stylesheet" type="text/css" href="style-login.css">
           <script type="text/javascript">
         function validate()
          {
              Qty=document.order.Qty.value;
              color=document.order.color.value;
             Name=document.order.Name.value;
             pcode=document.order.pcode.value;
             if(Qty==""||Qty==null)
              {
                 alert("Please select quantity");
                 document.order.Qty.focus();
                 return false;
               }
               if(color==""||color==null)
              {
                 alert("Please select color");
                 document.order.color.focus();
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
<form name="order"method="get"action="readcart.jsp"
      onsubmit="return validate()">
<div class="mid" style="width: 500px;">
<div class="design" style="background: #006666;">
       <h2>  Please select Quantity and color</h2>
       <span><label>Qty:</label>
        <select class="selectstyle" name="Qty">
            <option value="1">1</option>
            <option value="2">2</option></select></span>
         <span><label>Color:</label>
         <select class="selectstyle" name="color">
             <option value="Black">Black</option>
             <option value="white">White</option>
             <option value="Red">Red</option>        
         </select></span>             
         <input type="submit" value="submit">
  </div></div>
</form></body></html>