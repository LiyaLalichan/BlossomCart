<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BLOSSOMCART</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> 
    <link rel="stylesheet" type="text/css" href="MAIN_CSS/viewstyle.css">
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

<div class="container my-5">
    <h5 class="fw-bold">Send Congratulations with Fresh Flowers! 🎓🎉</h5>
    <p class="text-muted">
     Not Sure What Product You Need To Order to Say Congratulations? Choose From our Occasional Products. Choose From Plenty Of Options On the Website!
      Celebrate success with this vibrant bouquet of mixed lilies and carnations.
    </p>

      <div class="row g-4 text-center">

        <!-- Product 1 -->
        <div class="col-6 col-md-3">
            <div class="product-card">
              <a href="#"> <img src="Image/image.jpg" class="img-fluid rounded" alt="Product 1"></a>
                <div class="product-name"></div>
                <div class="product-price"></div>
            </div>
        </div>
         <!-- Product 1 -->
        
        </div>
        </div>
        
        <footer>
    <div class="footer-col">
      <h4>Resources</h4>
      <ul>
       <li><a href="About_Us.jsp">About Us</a></li>
        <li><a href="Terms.jsp">Terms of service</a></li>
        <li><a href="Refund.jsp">Refund Policy</a></li>
        <li><a href="Privacy.jsp">Privacy Policy</a></li>
        <li><a href="Contact.jsp">Contact Us</a></li>
      </ul>
    </div>

    <div class="footer-col">
      <h4>Connect With Us</h4>
      <p>Explore our social media channels to read about our latest insights.</p>
      <p style="margin-top: 10px; font-size: 14px;"><strong>Email:</strong> support@blossomcart.in</p>
      <p style="font-size: 14px;"><strong>Helpline:</strong> +91 98765 43210 (Mon–Fri, 10 AM – 6 PM | Sunday: 10:00 AM – 4:00 PM IST)</p>
    </div>
    </div>
  </footer>

  <div class="bottom-text">© 2025 BLOSSOMCART</div>
      
</body>
</html>