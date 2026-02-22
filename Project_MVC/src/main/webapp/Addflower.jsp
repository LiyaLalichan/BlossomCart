
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Flower - BlossomCart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fffafc;
        }
        .form-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 25px;
            background-color: white;
            border-radius: 1rem;
            box-shadow: 0 5px 10px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>

<div class="container form-container">
    <h3 class="text-center mb-4">🌸 Add New Flower</h3>
    <form action="AddFlowerServlet" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="flowerName" class="form-label">Flower Name</label>
            <input type="text" class="form-control" id="flowerName" name="flowerName" required>
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Category</label>
            <select class="form-select" id="category" name="category" required>
                <option selected disabled value="">Choose...</option>
                <option>Anniversary</option>
                <option>Birthday</option>
                <option>Love & Romance</option>
                <option>Congratulations</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price ($)</label>
            <input type="number" step="0.01" class="form-control" id="price" name="price" required>
        </div>
        <div class="mb-3">
            <label for="stock" class="form-label">Stock Quantity</label>
            <input type="number" class="form-control" id="stock" name="stock" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Upload Flower Image</label>
            <input class="form-control" type="file" id="image" name="image" accept="image/*" required>
        </div>
        <div class="d-grid">
            <button type="submit" class="btn btn-success">Add Flower</button>
        </div>
    </form>
</div>

</body>
</html>
