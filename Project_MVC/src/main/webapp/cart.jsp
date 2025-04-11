<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Cart</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Blossom Cart</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact us</a>
          </li>
        </ul>
        <div class="d-flex">
          <a href="#" class="btn btn-outline-light">
            <i class="fas fa-shopping-cart"></i> Cart
          </a>
        </div>
      </div>
    </div>
  </nav>
  <div class="container" style="margin-top: 100px;">
    <div class="row">
      <div class="col-md-4">
        <div class="product-box">
          <img src="https://www.cityflowers.co.in/cdn/shop/products/easyflo_521_final__ngkz1bbgtkubbxbu_9b80aacc-5bb4-4b9e-9baa-ddfede535a7e_360x.jpg?v=1740395151" alt="Red Roses" class="product-image">
          <h3>Purple Orchid</h3>
          <p>Price: ₹1000</p>
          <div class="btn-container">
            <div class="add-product-box">
              <a href="#" class="btn btn-primary btn-sm">Add products</a>
            </div>
            <a href="#" class="btn btn-danger btn-sm">Remove products</a>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="product-box">
          <img src="https://www.cityflowers.co.in/cdn/shop/products/roses58_inmsqswwrzko4tfh_360x.jpg?v=1740395030" alt="Red Roses" class="product-image">
          <h3>Red Roses</h3>
          <p>Price: ₹600</p>
          <div class="btn-container">
            <div class="add-product-box">
              <a href="#" class="btn btn-primary btn-sm">Add products</a>
            </div>
            <a href="#" class="btn btn-danger btn-sm">Remove products</a>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="product-box">
          <img src="https://www.cityflowers.co.in/cdn/shop/products/1612_segqub6qpvfhonns_720x.jpg?v=1740395348" alt="White Lilies" class="product-image">
          <h3>White Lilies</h3>
          <p>Price: ₹1600</p>
          <div class="btn-container">
            <div class="add-product-box">
              <a href="#" class="btn btn-primary btn-sm">Add products</a>
            </div>
            <a href="#" class="btn btn-danger btn-sm">Remove products</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
