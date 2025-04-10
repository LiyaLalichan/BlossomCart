<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Messages - BlossomCart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fef6f9;
        }
        .messages-header {
            margin: 40px 0;
            text-align: center;
        }
        .card {
            border-radius: 1rem;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="messages-header">
        <h2>💬 Customer Messages</h2>
        <p class="lead">Read feedback, questions, and reviews from customers</p>
    </div>

    <div class="row g-4">
        <div class="col-md-6">
            <div class="card p-3">
                <h5>From: Alice Johnson</h5>
                <p class="mb-1"><strong>Subject:</strong> Order Not Delivered</p>
                <p class="text-muted">Hi, I ordered a tulip bouquet yesterday, and it hasn't been delivered yet. Can you check on it?</p>
                <button class="btn btn-sm btn-outline-primary">Reply</button>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card p-3">
                <h5>From: Bob Smith</h5>
                <p class="mb-1"><strong>Subject:</strong> Product Feedback</p>
                <p class="text-muted">The roses were beautiful! Thank you for the quick delivery. 💐</p>
                <button class="btn btn-sm btn-outline-primary">Reply</button>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card p-3">
                <h5>From: Claire Lee</h5>
                <p class="mb-1"><strong>Subject:</strong> Payment Issue</p>
                <p class="text-muted">I tried to pay using my card, but it failed. Is UPI available as an option?</p>
                <button class="btn btn-sm btn-outline-primary">Reply</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>