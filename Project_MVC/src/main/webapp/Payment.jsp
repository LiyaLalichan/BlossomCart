<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Checkout - BlossomCart</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  
   <link rel="stylesheet" type="text/css" href="MAIN_CSS/viewstyle.css">
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    @media (min-width: 1024px) {
      .sticky-section {
        position: -webkit-sticky;
        position: sticky;
        top: 2rem;
        align-self: start;
        height: fit-content;
      }
    }

    .selected {
      border: 2px solid #ec4899;
      border-radius: 8px;
    }
  </style>
</head>

<body >




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
    <a href="View.jsp">    <img src="Image/PROJECT LOGO.png" alt="Logo" class="logo-img">
    </div></a>
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




  <div class="max-w-6xl mx-auto p-6">
   
    <div class="grid grid-cols-1 lg:grid-cols-3 gap-8 items-start">
      <!-- Left Section -->
      <div class="lg:col-span-2 space-y-8">
        <!-- Contact -->
        <div class="bg-white p-6 rounded-lg shadow">
          <h2 class="text-xl font-semibold mb-4">Contact</h2>
          <input type="email" id="email" placeholder="Email" class="w-full border p-2 rounded mb-2" required />
          <label class="flex items-center space-x-2">
            <input type="checkbox" />
            <span>Email me with news and offers</span>
          </label>
        </div>

        <!-- Delivery -->
        <div class="bg-white p-6 rounded-lg shadow">
          <h2 class="text-xl font-semibold mb-4">Delivery</h2>
          <select class="w-full border p-2 rounded mb-4">
            <option>India</option>
          </select>
          <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
            <input type="text" id="firstName" placeholder="First name" class="border p-2 rounded" required />
            <input type="text" id="lastName" placeholder="Last name" class="border p-2 rounded" required />
            <input type="text" placeholder="Address" class="md:col-span-2 border p-2 rounded" required />
            <input type="text" placeholder="Apartment, suite, etc." class="md:col-span-2 border p-2 rounded" />
            <input type="text" placeholder="City" class="border p-2 rounded" required />
            <input type="text" placeholder="State" class="border p-2 rounded" required />
            <input type="text" id="pincode" placeholder="PIN code" class="border p-2 rounded md:col-span-2" required />
            <input type="text" id="phone" placeholder="Phone" class="md:col-span-2 border p-2 rounded" required />
          </div>
          <label class="flex items-center space-x-2 mt-4">
            <input type="checkbox" />
            <span>Save this information for next time</span>
          </label>
        </div>

        <!-- Payment -->
        <form id="checkoutForm" onsubmit="return validateForm()" class="bg-white p-6 rounded-lg shadow">
          <h2 class="text-xl font-semibold mb-4">Payment</h2>
          <div class="border p-4 rounded mb-4 space-y-4">
            <p class="font-medium text-center">Select Payment Method</p>
            <div class="flex flex-wrap justify-center gap-10">
              <div class="flex flex-col items-center cursor-pointer payment-method" data-method="visa" onclick="showPayment('visa')">
                <img src="https://img.icons8.com/color/48/000000/visa.png" class="h-10" alt="Visa" />
                <span class="text-sm mt-2">Visa</span>
              </div>
              <div class="flex flex-col items-center cursor-pointer payment-method" data-method="paytm" onclick="showPayment('paytm')">
                <img src="https://img.icons8.com/color/48/000000/paytm.png" class="h-10" alt="Paytm" />
                <span class="text-sm mt-2">Paytm</span>
              </div>
              <div class="flex flex-col items-center cursor-pointer payment-method" data-method="gpay" onclick="showPayment('gpay')">
                <img src="https://img.icons8.com/color/48/000000/google-pay.png" class="h-10" alt="Google Pay" />
                <span class="text-sm mt-2">GPay</span>
              </div>
              <div class="flex flex-col items-center cursor-pointer payment-method" data-method="cod" onclick="showPayment('cod')">
                <img src="https://img.icons8.com/?size=100&id=7976&format=png&color=000000" class="h-10" alt="COD" />
                <span class="text-sm mt-2">Cash on Delivery</span>
              </div>
            </div>

            <!-- Payment-specific forms -->
            <div id="visa-form" class="hidden mt-6">
              <input type="text" id="visaCard" placeholder="Enter Card Number" class="w-full border p-2 rounded" />
            </div>
            <div id="paytm-form" class="hidden mt-6">
              <input type="text" id="paytmNumber" placeholder="Enter Paytm Number" class="w-full border p-2 rounded" />
            </div>
            <div id="gpay-form" class="hidden mt-6">
              <input type="text" id="gpayUpi" placeholder="Enter UPI ID for GPay" class="w-full border p-2 rounded" />
            </div>
            <div id="cod-form" class="hidden mt-6">
              <p class="text-gray-600">You will pay on delivery. No further details required.</p>
            </div>

            <p class="text-sm text-gray-600 text-center mt-4">
              After clicking "Pay now", you will be redirected to Razorpay Secure to complete your purchase securely.
            </p>
          </div>

          <!-- Billing Address -->
          <div class="mt-4">
            <h3 class="font-semibold mb-2">Billing address</h3>
            <label class="block mb-2">
              <input type="radio" name="billing" value="same" checked class="mr-2" onclick="toggleBillingForm()" />
              Same as shipping address
            </label>
            <label class="block">
              <input type="radio" name="billing" value="different" class="mr-2" onclick="toggleBillingForm()" />
              Use a different billing address
            </label>

            <!-- Hidden billing form -->
            <div id="billingForm" class="mt-4 hidden space-y-4">
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <input type="text" placeholder="First name" class="border p-2 rounded" />
                <input type="text" placeholder="Last name" class="border p-2 rounded" />
                <input type="text" placeholder="Address" class="md:col-span-2 border p-2 rounded" />
                <input type="text" placeholder="Apartment, suite, etc." class="md:col-span-2 border p-2 rounded" />
                <input type="text" placeholder="City" class="border p-2 rounded" />
                <input type="text" placeholder="State" class="border p-2 rounded" />
                <input type="text" placeholder="PIN code" class="border p-2 rounded md:col-span-2" />
                <input type="text" placeholder="Phone" class="md:col-span-2 border p-2 rounded" />
              </div>
            </div>
          </div>

          <button type="submit" class="mt-6 w-full bg-black text-white py-3 rounded-lg hover:bg-gray-800 transition">Pay now</button>
        </form>
      </div>

      <!-- Right Section -->
      <div class="space-y-6 sticky-section">
        <div class="bg-white p-6 rounded-lg shadow">
          <div class="flex justify-between items-center">
            <div class="flex items-center space-x-4">
              <img src="Image/bouquet.webp" class="w-24 h-24" />
              <div>
                <p class="font-semibold">Red Ross Bouquet</p>
                <p class="text-sm text-gray-500">12 Flowers</p>
                <p class="text-sm text-gray-500">Delivery Location: Aluva</p>
                <p class="text-sm text-gray-500">Delivery Date: 09-04-2025</p>
                <p class="text-sm text-gray-500">Occasion: Love</p>
                <p class="text-sm text-gray-500">Message: jeg</p>
              </div>
            </div>
            <span class="font-semibold">₹749.00</span>
          </div>
          <div class="flex justify-between mt-4 border-t pt-4">
            <span class="font-semibold">Shipping</span>
            <span>₹290.00</span>
          </div>
          <div class="flex justify-between text-lg font-bold mt-2">
            <span>Total</span>
            <span>INR ₹1,039.00</span>
          </div>
        </div>

        <div class="bg-white p-6 rounded-lg shadow flex justify-between items-center">
          <div>
            <p class="font-semibold">Shipping Time</p>
            <p class="text-sm text-gray-500">8 AM - 5 PM</p>
          </div>
          <span class="font-semibold">₹290.00</span>
        </div>
      </div>
    </div>
  </div>

  <!-- Scripts -->
  <script>
    function toggleBillingForm() {
      const billingForm = document.getElementById("billingForm");
      const selected = document.querySelector('input[name="billing"]:checked').value;
      billingForm.classList.toggle("hidden", selected !== "different");
    }

    function showPayment(method) {
      const methods = ['visa', 'paytm', 'gpay', 'cod'];
      methods.forEach(m => {
        document.getElementById(m + '-form').classList.add('hidden');
        document.querySelector(`[data-method="${m}"]`)?.classList.remove('selected');
      });
      document.getElementById(method + '-form').classList.remove('hidden');
      document.querySelector(`[data-method="${method}"]`)?.classList.add('selected');
    }

    function validateForm() {
      const email = document.getElementById('email').value.trim();
      const firstName = document.getElementById('firstName').value.trim();
      const lastName = document.getElementById('lastName').value.trim();
      const phone = document.getElementById('phone').value.trim();
      const pincode = document.getElementById('pincode').value.trim();

      const selectedMethodDiv = document.querySelector('.payment-method.selected');
      const paymentMethod = selectedMethodDiv ? selectedMethodDiv.dataset.method : null;

      const visaCard = document.getElementById('visaCard')?.value.trim();
      const paytmNumber = document.getElementById('paytmNumber')?.value.trim();
      const gpayUpi = document.getElementById('gpayUpi')?.value.trim();

      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      const phoneRegex = /^[0-9]{10}$/;
      const pinRegex = /^[0-9]{6}$/;

      if (!emailRegex.test(email)) {
        alert('Please enter a valid email address.');
        return false;
      }
      if (!firstName || !lastName) {
        alert('First and Last name are required.');
        return false;
      }
      if (!pinRegex.test(pincode)) {
        alert('PIN code must be 6 digits.');
        return false;
      }
      if (!phoneRegex.test(phone)) {
        alert('Phone number must be 10 digits.');
        return false;
      }

      if (!paymentMethod) {
        alert('Please select a payment method.');
        return false;
      }

      if (paymentMethod === 'visa' && (!visaCard || visaCard.length < 12)) {
        alert('Please enter a valid Visa card number.');
        return false;
      }

      if (paymentMethod === 'paytm' && (!paytmNumber || !phoneRegex.test(paytmNumber))) {
        alert('Please enter a valid Paytm number.');
        return false;
      }

      if (paymentMethod === 'gpay' && (!gpayUpi || !gpayUpi.includes('@'))) {
        alert('Please enter a valid GPay UPI ID.');
        return false;
      }

      return true;
    }
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
