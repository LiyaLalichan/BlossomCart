<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop Owner Home - BlossomCart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fef6f9;
        }
        .nav-card {
            border-radius: 1rem;
            transition: transform 0.2s ease;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        .nav-card:hover {
            transform: translateY(-5px);
        }
        .dashboard-header {
            margin-top: 50px;
            margin-bottom: 30px;
            text-align: center;
        }
        .nav-icon {
            font-size: 40px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="dashboard-header">
        <h1>🌸 Welcome to BlossomCart Shop Owner Portal</h1>
        <p class="lead">Manage your flower shop with ease</p>
    </div>

    <div class="row text-center g-4">
        <div class="col-md-4">
            <a href="shopDashboard.jsp" class="text-decoration-none text-dark">
                <div class="card nav-card p-4">
                    <div class="nav-icon">📊</div>
                    <h4 class="mt-3">Dashboard</h4>
                    <p>View sales, orders & inventory at a glance</p>
                </div>
            </a>
        </div>

        <div class="col-md-4">
            <a href="Addflower.jsp" class="text-decoration-none text-dark">
                <div class="card nav-card p-4">
                    <div class="nav-icon">➕</div>
                    <h4 class="mt-3">Add Flower</h4>
                    <p>Add new flowers to your shop</p>
                </div>
            </a>
        </div>

        <div class="col-md-4">
            <a href="Manage.jsp" class="text-decoration-none text-dark">
                <div class="card nav-card p-4">
                    <div class="nav-icon">📦</div>
                    <h4 class="mt-3">Manage Orders</h4>
                    <p>Track and update customer orders</p>
                </div>
            </a>
        </div>

        <div class="col-md-4">
            <a href="Inventory.jsp" class="text-decoration-none text-dark">
                <div class="card nav-card p-4">
                    <div class="nav-icon">🌼</div>
                    <h4 class="mt-3">Inventory</h4>
                    <p>View and manage flower stock</p>
                </div>
            </a>
        </div>

        <div class="col-md-4">
            <a href="Message.jsp" class="text-decoration-none text-dark">
                <div class="card nav-card p-4">
                    <div class="nav-icon">💬</div>
                    <h4 class="mt-3">Messages</h4>
                    <p>Check customer inquiries and reviews</p>
                </div>
            </a>
        </div>

      
    </div>
</div>

</body>
</html>