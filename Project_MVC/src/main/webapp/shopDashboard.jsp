<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - BlossomCart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fef6f9;
        }
        .dashboard-header {
            margin: 40px 0;
            text-align: center;
        }
        .card-box {
            border-radius: 1rem;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: transform 0.2s ease;
        }
        .card-box:hover {
            transform: scale(1.02);
        }
        .icon-box {
            font-size: 40px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="dashboard-header">
        <h2>📊 BlossomCart - Shop Dashboard</h2>
        <p class="lead">Overview of your store performance</p>
    </div>

    <div class="row g-4">
        <div class="col-md-3">
            <div class="card card-box text-center p-4">
                <div class="icon-box">💰</div>
                <h4 class="mt-3">Total Sales</h4>
                <p class="text-success fs-5">$12,450</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card card-box text-center p-4">
                <div class="icon-box">🛒</div>
                <h4 class="mt-3">New Orders</h4>
                <p class="text-primary fs-5">36</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card card-box text-center p-4">
                <div class="icon-box">🚚</div>
                <h4 class="mt-3">Pending Deliveries</h4>
                <p class="text-warning fs-5">12</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card card-box text-center p-4">
                <div class="icon-box">🌷</div>
                <h4 class="mt-3">Flowers in Stock</h4>
                <p class="text-info fs-5">124</p>
            </div>
        </div>
    </div>

    <div class="mt-5">
        <h4>Recent Orders</h4>
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Customer</th>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Alice</td>
                    <td>Rose Bouquet</td>
                    <td>1</td>
                    <td><span class="badge bg-warning">Pending</span></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Bob</td>
                    <td>Tulip Arrangement</td>
                    <td>2</td>
                    <td><span class="badge bg-success">Delivered</span></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Claire</td>
                    <td>Orchid Basket</td>
                    <td>1</td>
                    <td><span class="badge bg-danger">Cancelled</span></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
