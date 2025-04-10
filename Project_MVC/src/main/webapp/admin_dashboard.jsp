<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - BlossomCart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .sidebar {
            height: 100vh;
            background-color: #343a40;
            color: white;
        }
        .sidebar a {
            color: white;
            display: block;
            padding: 15px;
            text-decoration: none;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .card {
            border-radius: 15px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-2 sidebar d-flex flex-column p-0">
                <h4 class="text-center py-4">Admin Panel</h4>
                <a href="#">Dashboard</a>
                <a href="#">Manage Products</a>
                <a href="#">Orders</a>
                <a href="#">Customers</a>
                <a href="#">Messages</a>
                <a href="#">Settings</a>
                <a href="#">Logout</a>
            </div>

            <!-- Main Content -->
            <div class="col-md-10 p-4">
                <h2>Welcome, Admin 🌸</h2>
                <div class="row mt-4">
                    <div class="col-md-3">
                        <div class="card text-white bg-primary mb-3">
                            <div class="card-body">
                                <h5 class="card-title">Total Orders</h5>
                                <p class="card-text fs-4">120</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-white bg-success mb-3">
                            <div class="card-body">
                                <h5 class="card-title">Revenue</h5>
                                <p class="card-text fs-4">₹25,000</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-white bg-warning mb-3">
                            <div class="card-body">
                                <h5 class="card-title">Customers</h5>
                                <p class="card-text fs-4">75</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card text-white bg-danger mb-3">
                            <div class="card-body">
                                <h5 class="card-title">Products</h5>
                                <p class="card-text fs-4">45</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Recent Orders Table -->
                <div class="mt-5">
                    <h4>Recent Orders</h4>
                    <table class="table table-bordered table-hover mt-3">
                        <thead class="table-light">
                            <tr>
                                <th>Order ID</th>
                                <th>Customer</th>
                                <th>Product</th>
                                <th>Status</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#101</td>
                                <td>Anjali</td>
                                <td>Rose Bouquet</td>
                                <td><span class="badge bg-success">Delivered</span></td>
                                <td>₹999</td>
                            </tr>
                            <tr>
                                <td>#102</td>
                                <td>Ravi</td>
                                <td>Birthday Combo</td>
                                <td><span class="badge bg-warning text-dark">Pending</span></td>
                                <td>₹1499</td>
                            </tr>
                            <tr>
                                <td>#103</td>
                                <td>Sneha</td>
                                <td>Love Basket</td>
                                <td><span class="badge bg-danger">Cancelled</span></td>
                                <td>₹799</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
