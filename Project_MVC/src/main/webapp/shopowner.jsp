<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"type="text/css" href="css/ownercss.css">
</head>
<body style="font-family: sans-serif;">
    

    <h3 style="text-align: center;">OWNER DETAILS</h3>



<div class="div">
 <form action="SRegisterServlet" method="post">
        <label>OWNER NAME</label>
        <input type="text" name="owner_name" placeholder="Enter name" class="in" required><br>
    
        <label>SHOP NAME</label>
        <input type="text" name="shop_name" placeholder="Enter your company name" class="in" required><br>
    
        <label>ADDRESS_1</label>
        <input type="text" name="address_1" placeholder="Enter your Address" class="in" required><br>
    
        <label>ADDRESS_2</label>
        <input type="text" name="address_2" placeholder="Enter your address" class="in" required><br>
    
        <label>DISTRICT</label>
        <input type="text" name="district" placeholder="Enter your district" class="in" required><br>
    
        <label>STATE</label>
        <input type="text" name="state" placeholder="Enter state" class="in" required><br>
    
        <label>PINCODE</label>
        <input type="number" name="pincode" placeholder="Enter pincode" class="in" required min="100000" max="999999"><br>
    
        <label>LICENSE_ID</label>
        <input type="number" name="license_id" placeholder="Enter id" class="in" required><br>
    
        <label>PHONE NUMBER</label>
        <input type="tel" name="phone" placeholder="Enter phone number" class="in" required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number"><br>
    
        <label>E-MAIL_ID</label>
        <input type="email" name="email" placeholder="Enter your email" class="in" required><br>
    
        <button type="submit">Submit</button>
    </form>




</div>
</body>
</html>