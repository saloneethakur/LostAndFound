<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Found Item</title>
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
    <h2>Create Item</h2>
    <form method="post" action="/user/saveItem" enctype="multipart/form-data">
        <div class="form-group">
            <label for="itemName">Item Name:</label>
            <input type="text" class="form-control" id="itemName" name="itemName" required>
        </div>
        
        <div class="form-group">
            <label for="category">Category:</label>
            <select class="form-control" id="category" name="category" required>
                <option value="">Select category</option>
                <option value="Electronics">Electronics</option>
                <option value="Clothing">Clothing</option>
                <option value="Books">Books</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="form-group" id="otherCategoryGroup" style="display: none;">
            <label for="otherCategory">Other Category:</label>
            <input type="text" class="form-control" id="otherCategory" name="otherCategory">
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
        </div>
        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" class="form-control" id="location" name="location" required>
        </div>
        <div class="form-group">
            <label for="type">Type:</label>
            <input type="text" class="form-control" id="type" name="type" required>
        </div>
        <div class="form-group">
            <label for="date">Date:</label>
            <input type="date" class="form-control" id="date" name="date" required>
        </div>
        <div class="form-group">
            <label for="image">Image:</label>
            <input type="file" class="form-control-file" id="image" name="image">
            
        </div>
        <!-- 
         <div>
        <input type="hidden" value="${users.getUserId()}" name="userId">
        </div>
        -->
       
        
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<button  class="btn transparent"  id="sign-in-btn"  onclick="location.href='/user/displayItems'">  
        	login
        </button>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('#category').change(function(){
            if($(this).val() === 'Other') {
                $('#otherCategoryGroup').show();
            } else {
                $('#otherCategoryGroup').hide();
            }
        });
    });
</script>
</body>
</html>
