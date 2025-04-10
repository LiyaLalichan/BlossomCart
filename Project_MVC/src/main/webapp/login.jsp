<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BLOSSOMCART</title>
<link rel="stylesheet"type="text/css" href="css/logincss.css">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> 
    <link rel="stylesheet" type="text/css" href="MAIN_CSS/viewstyle.css">
     <style>
        .login-container {
            max-width: 400px;
            margin: 60px auto;
            background: #f9f9f9;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 25px;
        }
        a {
        text-decoration: none;
        color: #000; /* black or any desired color */
    }

    a:hover {
        color: #dc3545; /* optional: red on hover */
    }
    </style>
</head>
<body>

  <div class="container-fluid border-bottom bg-white">
    <div class="container-fluid d-flex justify-content-between align-items-center py-2 px-4 top-nav icon-group">
        <!-- Left side links -->
        <div class="d-flex">
            <a href="About_Us.jsp" class="me-4 text-decoration-none text-dark">About</a>
            <a href="Contact.jsp" class="me-4 text-decoration-none text-dark">Contact Us</a>
           
        </div>

        <!-- Right side icon -->
        <div>
           <a href="login.jsp" class="text-dark fs-5">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/><path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
            </svg></a>
            
            <a href="#" class="text-dark fs-5"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
            </svg></a>
            
            <a href="#" class="text-dark fs-5"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
            <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l.5 2H5V5zM6 5v2h2V5zm3 0v2h2V5zm3 0v2h1.36l.5-2zm1.11 3H12v2h.61zM11 8H9v2h2zM8 8H6v2h2zM5 8H3.89l.5 2H5zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0"/>
            </svg></a>
        </div>
        
      </div>
</div>

<div class="container main-nav">
    <div class="logo">
      <a href="View.jsp"><img src="Image/PROJECT LOGO.png" alt="Logo" class="logo-img" ></a>
    </div>
   <div class="main-menu d-flex align-items-center gap-3">

  
    <a href="Anniversary.jsp" class="nav-link">Anniversary</a>
    <a href="Birthday.jsp" class="nav-link">BIRTHDAY FLOWERS</a>
    <a href="Congrats.jsp" class="nav-link">Congratulations</a>
    <a href="Love.jsp" class="nav-link">Love & Romance</a>
</div>

</div>

<div class="marquee-container">
  <div class="marquee">
    <span>Welcome to BlossomCart – Your Trusted Online Flower Boutique!</span>
    <span>SEND FARM FRESH FLOWERS – With Free Shipping* 💐</span>
    <span>Send Love, Send Flowers – Midnight Delivery Available!</span>
  </div>
</div>
<div class="login-container">
    <h2>Welcome Back to BlossomCart</h2>
    <form action="LoginServlet" method="post">

        <div class="mb-3">
            <label for="role" class="form-label">Login As:</label>
            <select class="form-select" id="role" name="role" required>
                <option value="">-- Select Role --</option>
                <option value="user">Customer</option>
                <option value="shopowner">Shop Owner</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">User Name:</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="" required>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password:</label>
            <input type="password" class="form-control" id="password" name="password"
                   placeholder="Enter password" minlength="6" required>
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-dark px-5">Login</button>
        </div>

        <div class="mt-3 text-center">
            <p>Don't have an account? <a href="#" id="registerLink">Register here</a></p>
        </div>
    </form>
</div>
  <script>
    document.getElementById("registerLink").addEventListener("click", function(event) {
        event.preventDefault(); 
        var role = document.getElementById("role").value;
        if (role === "user") {
            window.location.href = "register.jsp"; 
        } else if (role === "shopowner") {
            window.location.href = "shopowner.jsp"; 
        } else {
            alert("Please select a role before registering.");
        }
    });
</script>
    

</body>
</html>