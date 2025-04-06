<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Flower Boutique</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f9f9f9;
        }
        .sidebar {
            height: 100vh;
            background-color: #2a2a72;
            color: white;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 15px;
        }
        .sidebar a:hover {
            background-color: #444;
        }
        .content {
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-2 sidebar">
            <h4 class="text-center py-3">Admin Panel</h4>
            <a href="#">Dashboard</a>
            <a href="#">Orders</a>
            <a href="#">Manage Bouquets</a>
            <a href="#">Add New Bouquet</a>
            <a href="#">Customers</a>
            <a href="#">Logout</a>
        </div>

        <!-- Main Content -->
        <div class="col-md-10 content">
            <h2>Welcome, Admin!</h2>
            <p>Here’s a quick look at your flower bouquet store.</p>

            <div class="row">
                <div class="col-md-4">
                    <div class="card text-white bg-success mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Total Orders</h5>
                            <p class="card-text">150</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-white bg-info mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Available Bouquets</h5>
                            <p class="card-text">35</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-white bg-warning mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Registered Users</h5>
                            <p class="card-text">89</p>
                        </div>
                    </div>
                </div>
            </div>

            <h4 class="mt-4">Recent Orders</h4>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Bouquet</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#0012</td>
                        <td>Jane Doe</td>
                        <td>Rose Delight</td>
                        <td><span class="badge bg-success">Delivered</span></td>
                    </tr>
                    <tr>
                        <td>#0013</td>
                        <td>John Smith</td>
                        <td>Sunflower Glow</td>
                        <td><span class="badge bg-primary">Processing</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>


</body>
</html>
