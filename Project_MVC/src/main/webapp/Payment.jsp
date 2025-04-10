<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Checkout - BlossomCart</title>
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

<body class="bg-gray-100">
  <div class="max-w-6xl mx-auto p-6">
    <h1 class="text-4xl font-bold text-pink-600 mb-8">BlossomCart</h1>
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
</body>
</html>
