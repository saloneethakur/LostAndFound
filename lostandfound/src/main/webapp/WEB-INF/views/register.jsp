<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Add your custom CSS styles here */
        .error-message {
            color: red;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h2>User Registration</h2>
    <form method="post" action="/web/reg_user">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="phone">Phone:</label>
            <input type="text" class="form-control" id="phone" name="phone" pattern="[0-9]{10}" required>
            <small class="form-text text-muted">Please enter a 10-digit phone number.</small>
        </div>
        <div class="form-group">
            <label for="enrollmentId">Enrollment ID:</label>
            <input type="text" class="form-control" id="enrollmentId" name="enrollmentId" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
     
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
    
</div>
 <button  class="btn transparent"  id="sign-in-btn"  onclick="location.href='/web/loginn'">  
        	login
        </button>
 <script src="/assets/JS/app.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
