<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Items</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('/assets/images/map2.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
        }
        .item-card {
            margin-bottom: 30px;
            height: 100%;
        }
        .item-card .card {
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .item-card .card-img-top {
            width: 100%;
            height: 200px;
            object-fit: cover;
            margin: auto;
        }
        .item-card-body {
            flex-grow: 1;
            padding: 15px;
            display: flex;
            flex-direction: column;
        }
        .item-card-body h5 {
            margin-bottom: 10px;
        }
        .item-card-body p {
            margin-bottom: 5px;
            flex-grow: 1;
        }
        .btn {
            align-self: flex-end;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="mt-4 mb-4">List of Items</h2>
        <!-- Search Form -->
        <form method="GET" action="/user/all_items" class="form-inline mb-4">
            <input type="text" name="search" class="form-control mr-2" placeholder="Search items">
            <select name="category" class="form-control mr-2">
                                    
                 
                <!-- Populate categories dynamically -->
                 
                <c:forEach items="${categories}" var="category">
                    <option value="${category}">${category}</option>
                </c:forEach>
                
            </select>
            <select name="type" class="form-control mr-2">
                <!-- 
                <c:forEach items="${types}" var="type">
                    <option value="${type}">${type}</option>
                </c:forEach>
                 -->
                <!-- Populate types dynamically -->
                
                 <option value="" >select by type</option>
                <option value="lost">lost</option>
                <option value="found">found</option>
            </select>
           
            <select name="sort" class="form-control mr-2">
             <option value="" >Sort by</option>
                <option value="date">Sort by Date</option>
                <option value="name">Sort by Name</option>
            </select>
            <button type="submit" class="btn btn-primary">Search</button>
            <button type="button" class="btn btn-secondary" onclick="resetForm()">Reset</button>
        </form>

        <div class="row">
            <c:forEach items="${items}" var="item">
                <div class="col-md-6 item-card">
                    <div class="card">
                        <c:set var="fileNameArray" value="${fn:split(item.image, '\\\\')}" />
                        <c:set var="fileName" value="${fileNameArray[fn:length(fileNameArray) - 1]}" />
                        <img src="/image/${fileName}" class="card-img-top" alt="${item.itemName}">
                        <div class="card-body item-card-body">
                            <h5 class="card-title">${item.itemName}</h5>
                            <p class="card-text"><strong>Type:</strong> ${item.type}</p>
                            <p class="card-text"><strong>Description:</strong> ${item.description}</p>
                            <p class="card-text"><strong>Location:</strong> ${item.location}</p>
                            <p class="card-text"><strong>Date:</strong> ${item.date}</p>
                            <p class="card-text"><strong>Contact:</strong> ${item.user.phone}</p>
                            <p class="card-text"><strong>Status:</strong>${item.item_status}</p>
                            
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    function resetForm() {
        window.location.href = '/user/displayItems';
    }
</script>
</body>
</html>