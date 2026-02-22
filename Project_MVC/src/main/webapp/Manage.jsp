
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Orders - BlossomCart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fef6f9;
        }
        .orders-header {
            margin: 40px 0;
            text-align: center;
        }
        .badge-status {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="orders-header">
        <h2>📦 Manage Orders</h2>
        <p class="lead">View and update customer orders</p>
    </div>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Order ID</th>
                <th>Customer</th>
                <th>Product</th>
                <th>Quantity</th>
                <th>Date</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>202501</td>
                <td>Emma Watson</td>
                <td>Love Rose Basket</td>
                <td>1</td>
                <td>2025-04-08</td>
                <td><span class="badge bg-warning badge-status">Pending</span></td>
                <td>
                    <button class="btn btn-sm btn-success">Mark as Delivered</button>
                    <button class="btn btn-sm btn-danger">Cancel</button>
                </td>
            </tr>
            <tr>
                <td>202502</td>
                <td>Liam Brown</td>
                <td>Birthday Lilies</td>
                <td>2</td>
                <td>2025-04-07</td>
                <td><span class="badge bg-success badge-status">Delivered</span></td>
                <td>
                    <button class="btn btn-sm btn-secondary" disabled>Completed</button>
                </td>
            </tr>
            <tr>
                <td>202503</td>
                <td>Noah Wilson</td>
                <td>Orchid Delight</td>
                <td>1</td>
                <td>2025-04-06</td>
                <td><span class="badge bg-danger badge-status">Cancelled</span></td>
                <td>
                    <button class="btn btn-sm btn-secondary" disabled>Cancelled</button>
                </td>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>
