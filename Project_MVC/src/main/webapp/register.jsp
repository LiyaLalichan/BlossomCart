 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here

</title>
<link rel="stylesheet"type="text/css" href="css/Style.css">
</head>
  <body style="font-family: sans-serif;">
        
        <div class="div">
<h2>Create account</h2>
    <form id="myForm">
        <label class="la">First Name</label><br>
        <input type="text" placeholder="Enter your Firstname" class="in" id="firstName" name="firstName" required><br>
        <span id="firstNameError" class="error"></span><br>

        <label class="la">Last Name</label><br>
        <input type="text" placeholder="Enter your Lastname" class="in" id="lastName" name="lastName" required><br>
        <span id="lastNameError" class="error"></span><br>

        <label class="la">Email</label><br>
        <input type="email" placeholder="Enter your Email" class="in" id="email" name="email" required><br>
        <span id="emailError" class="error"></span><br>

        <label class="la">Phone Number</label><br>
        <input type="tel" placeholder="Enter your Phone Number" class="in" id="phone" name="phone" required pattern="^\d{10}$"><br>
        <span id="phoneError" class="error"></span><br>

        <label class="la">Password</label><br>
        <input type="password" placeholder="Enter your Password" class="in" id="password" name="password" required minlength="6"><br>
        <span id="passwordError" class="error"></span><br>

        <input type="submit" value="Create" class="btn">
    </form>



</div>
    </body>
</html>