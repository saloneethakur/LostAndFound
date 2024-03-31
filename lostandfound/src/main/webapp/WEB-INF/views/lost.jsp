<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style> 
input {
  width: 100%;
}

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {
        background-color: #f1f1f1;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }
    body {
        font-family: Arial, sans-serif;
    }
    .container {
        max-width: 500px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    h2 {
        text-align: center;
    }
    .form-group {
        margin-bottom: 20px;
    }
    .form-group label {
        display: block;
        font-weight: bold;
    }
    .form-group input[type="file"] {
        width: 100%;
        padding: 10px;
        box-sizing: border-box;
    }
    .form-group input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .form-group input[type="submit"]:hover {
        background-color: #45a049;
    }

</style>

</head>
<body>

<h2>Lost Item Form</h2>

<form>
  <label for="item">Item Name</label>
  <input type="text" placeholder="Enter Item name" name="item" id="item" required>
  
  <label for="category">Category:</label>
<select placeholder="Enter Item Category"name="category" id="category">
  <optgroup label="Category">
    <option value="electronics">Electronics</option>
    <option value="personal accessories">Personal Accessories</option>
    <option value="Bags">Bags</option>
    <option value="sporting">Sporting Tools</option>
    <option value="other">Other</option>
  </optgroup>
</select>

<label for="lost date">Lost Date:</label>
<input type="date" id="lost date" name="lost date">

<label for="location">Location:</label>
 <input type="text" placeholder="Enter Item name" name="item" id="item" required>

<div class="container">
    <h2>Upload Image</h2>
    <form action="upload.php" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="image">Choose Image:</label>
            <input type="file" name="image" id="image" accept="image/*" required>
        </div>
        <div class="form-group">
            <input type="submit" value="Upload Image">
        </div>
<input type="submit" value="Submit Form">
</form>

</body>
</html>