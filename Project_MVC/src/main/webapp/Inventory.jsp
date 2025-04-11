<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inventory - BlossomCart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fef6f9;
        }
        .inventory-header {
            margin: 40px 0;
            text-align: center;
        }
        .table th, .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="inventory-header">
        <h2>🌷 Flower Inventory</h2>
        <p class="lead">View and manage your flower stock</p>
    </div>

    <div class="mb-3 text-end">
        <a href="add-flower.html" class="btn btn-success">+ Add New Flower</a>
    </div>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Flower Name</th>
                <th>Category</th>
                <th>Stock</th>
                <th>Price</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>101</td>
                <td>Red Rose Bouquet</td>
                <td>Love & Romance</td>
                <td>20</td>
                <td>$25.00</td>
                <td><span class="badge bg-success">Available</span></td>
                <td>
                    <button class="btn btn-sm btn-primary">Edit</button>
                    <button class="btn btn-sm btn-danger">Delete</button>
                </td>
            </tr>
            <tr>
                <td>102</td>
                <td>Yellow Tulip</td>
                <td>Congratulations</td>
                <td>0</td>
                <td>$18.00</td>
                <td><span class="badge bg-danger">Out of Stock</span></td>
                <td>
                    <button class="btn btn-sm btn-primary">Edit</button>
                    <button class="btn btn-sm btn-danger">Delete</button>
                </td>
            </tr>
            <tr>
                <td>103</td>
                <td>Orchid Delight</td>
                <td>Anniversary</td>
                <td>10</td>
                <td>$30.00</td>
                <td><span class="badge bg-success">Available</span></td>
                <td>
                    <button class="btn btn-sm btn-primary">Edit</button>
                    <button class="btn btn-sm btn-danger">Delete</button>
                </td>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>
