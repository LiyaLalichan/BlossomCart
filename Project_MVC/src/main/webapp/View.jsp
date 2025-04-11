<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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

    <!-- Right side icons (Login, Search, Cart) - aligned horizontally -->
    <div class="d-flex align-items-center gap-3">
      <a href="login.jsp" class="text-dark fs-5">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
          <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
          <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1" />
        </svg>
      </a>

      <a href="#" class="text-dark fs-5">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
          <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
        </svg>
      </a>

      <a href="#" class="text-dark fs-5">
        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
          <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l.5 2H5V5zM6 5v2h2V5zm3 0v2h2V5zm3 0v2h1.36l.5-2zm1.11 3H12v2h.61zM11 8H9v2h2zM8 8H6v2h2zM5 8H3.89l.5 2H5zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0" />
        </svg>
      </a>
    </div>
  </div>
</div>


<div class="container main-nav">
    <div class="logo">
        <img src="Image/PROJECT LOGO.png" alt="Logo" class="logo-img">
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


<div id="heroCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="1000" data-bs-slide="prev" data-bs-slide="next">

    <div class="carousel-inner carousel-fade">

        <div class="carousel-item active">
            <img src="Image/image.jpg" class="d-block w-100" alt="Flowers 1">
            <div class="carousel-caption d-flex flex-column justify-content-center align-items-center h-100">
                <h5 class="text-uppercase">Make Her Day With</h5>
                <h1 class="display-4 fw-bold">Farm Fresh Flowers</h1>
                <p class="lead">Available for Same-Day-Delivery</p>
                <div>
                    <a href="#" class="btn btn-light me-2">Shop This</a>
                    <a href="#" class="btn btn-outline-light">Shop All</a>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img src="Image/image2.jpg" class="d-block w-100" alt="Flowers 2">
            <div class="carousel-caption d-flex flex-column justify-content-center align-items-center h-100">
                <h5 class="text-uppercase">Beautiful Bouquets</h5>
                <h1 class="display-4 fw-bold">Seasonal Picks</h1>
                <p class="lead">Brighten Their Day With Love</p>
                <div>
                    <a href="#" class="btn btn-light me-2">Explore</a>
                    <a href="#" class="btn btn-outline-light">View All</a>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <img src="Image/image3.jpg" class="d-block w-100" alt="Flowers 3">
            <div class="carousel-caption d-flex flex-column justify-content-center align-items-center h-100">
                <h5 class="text-uppercase">Perfect for Every Occasion</h5>
                <h1 class="display-4 fw-bold">Luxury Flower Boxes</h1>
                <p class="lead">Elegant. Timeless. Stunning.</p>
                <div>
                    <a href="#" class="btn btn-light me-2">Discover</a>
                    <a href="#" class="btn btn-outline-light">All Collections</a>
                </div>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
    </button>
</div>


 <!-- description -->
<div class="container my-5">
    <h5 class="fw-bold">BLOSSOM CART – PREMIUM FLOWER DELIVERY</h5>
    <p class="text-muted">
        Blossom Cart brings you hand-picked floral arrangements crafted by skilled florists across major cities. 
        Whether you're celebrating a birthday, anniversary, or simply want to brighten someone’s day, our 
        curated flower boxes and bouquets are perfect for every occasion. With years of experience in floral 
        design, we ensure freshness, elegance, and timely delivery with every order. From classic roses to 
        vibrant exotic blooms, Blossom Cart offers the perfect floral expression delivered straight to your doorstep.
    </p>
</div>


  <!-- photo grid -->
  
  <div class="container py-5">
    <div class="row text-center mb-4">
        <h2 class="fw-bold">Shop Our Collection</h2>
    </div>
    <div class="row g-4 text-center">

        <!-- Product 1 -->
        <div class="col-6 col-md-3">
            <div class="product-card">
              <a href="#"> <img src="Image/image.jpg" class="img-fluid rounded" alt="Product 1"></a>
                <div class="product-name"></div>
                <div class="product-price"></div>
            </div>
        </div>
         <!-- Product 2-->
        <div class="col-6 col-md-3">
            <div class="product-card">
                <a href="#"> <img src="#" class="img-fluid rounded" alt="Product 2"></a>
                <div class="product-name"></div>
                <div class="product-price"></div>
            </div>
        </div> 
    </div>
</div>

<!-- footer -->
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

 


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
