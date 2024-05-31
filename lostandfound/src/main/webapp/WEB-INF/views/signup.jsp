<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lost & Found Original</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
        <div class="head">
            <a href="#" class="logo"><img src="images/logo.png" alt=""></a>
            <div class="toggle">
                <div class="toggleIcon" onclick="menuToggle();"></div>
            </div>
        </div>
        <div class="menu-overlay">
            <ul>
                <li><a href="#home">HOME</a></li>
                <li><a href="#aboutus">About US</a></li>
                <li><a href="#foundpost">Found Post</a></li>
                <li><a href="#lostpost">Lost Post</a></li>
                <li><a href="#contactus">Contact Us</a></li>
            </ul>
        </div>
        <div class="social-area">
            <div class="user-area">
                <a href="#" class="user"><i class="fa fa-user"></i></a>
            </div>
            <div class="social-link">
                <div class="circle" onclick="menus();">
                    <i class="fa fa-plus" id="plus"></i>
                </div>
                <div class="links" id="links"> 
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                </div>
            </div>
        </div>

        <section class="home" id="home">
            <div class="detail">
                <h2>LOST & FOUND</h2>
                <p>It is a designated area where people can drop off items they find on campus, as well as retrieve items they have lost. They ensure a centralized location where lost items can be deposited and found by their owners.</p>
                <div class="switch-btn" id="switch-title">
                    <a href="#found" class="switch active">Found</a>
                    <a href="#lost" class="switch">Lost</a>
                </div>
                <ul class="earth">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            
                <div class="content">
                    <div class="slide active" id="found">
                        <div class="inner">
                            
                            <form action="">
                                <h1>Found Form</h1>
                                <div class="inputBx">
                                    <label for="">Item Found</label>
                                    <input type="text" name="" placeholder="Enter Item..." required>
                                </div>
                                <div class="inputBx">
                                    <label for="">Category</label>
                                    <select>
                                        <option selected>Select Item Category</option>
                                        <option>Mobile Phone</option>
                                        <option>Personal Accessories</option>
                                        <option>ID Card</option>
                                        <option>Stationary Item</option>                                       
                                        <option>Musical Equipment</option>
                                        <option>Sporting Goods</option>                                                                               <option>Other</option>
                                    </select>
                                </div>
                                
                                <div class="inputBx">
                                    <label for="">Date Found</label>
                                    <input type="date" name=""
                                    min="2024-01-01" max="2024-12-31" placeholder="dd-mm-yyyy" required>
                                </div>
                                <div class="inputBx">
                                    <label for="">Location</label>
                                    <select id="month" name="month">
                                        <option selected>Enter Your City</option>
                                        <option>Los Angeles</option>
                                        <option>Paris</option>
                                        <option>New York City</option>
                                        <option>London</option>
                                        <option>Bangkok</option>
                                        <option>Hong Kong</option>
                                        <option>Dubai</option>
                                        <option>Singapore</option>
                                        <option>Rome</option>
                                        <option>Macau</option>
                                        <option>Istanbul</option>
                                        <option>Kuala Lumpur</option>
                                        <option>Delhi</option>
                                        <option>Tokyo</option>
                                        <option>Antalya</option>
                                        <option>Moscow</option>
                                        <option>Barcelona</option>
                                        <option>Madrid</option>
                                        <option>Chicago</option>
                                        <option>Toronto</option>
                                        <option>San Francisco</option>
                                        <option>Other</option>
                                    </select>
                                </div>
                                <div class="inputBx">
                                    <label for="">Upload Image</label>
                                    <input type="file" required>
                                </div>
                                <div class="inputBx">
                                    <input type="submit" class="btn" value="Search">
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="slide" id="lost">
                        <div class="inner">
                            
                            <form action="">
                                <h1>Lost Form</h1>
                                <div class="inputBx">
                                    <label for="">Item Lost</label>
                                    <input type="text" name="" placeholder="Enter Item..." required>
                                </div>
                                <div class="inputBx">
                                    <label for="">Category</label>
                                    <select>
                                        <option selected>Select Item Category</option>
                                        <option>Electronics</option>
                                        <option>Personal Accessories</option>
                                        <option>Animals/Pets</option>
                                        <option>Baggage/Bags/Luggage</option>
                                        <option>Clothing</option>
                                        <option>Footwear</option>
                                        <option>Household/Tools</option>
                                        <option>Jewellery </option>
                                        <option>Musical Equipment</option>
                                        <option>Sporting Goods</option>
                                        <option>Tickets</option>
                                        <option>Other</option>
                                    </select>
                                </div>
                                
                                <div class="inputBx">
                                    <label for="">Date Lost</label>
                                    <input type="date" name=""
                                    min="2021-01-01" max="2021-12-31" placeholder="dd-mm-yyyy" required>
                                    <span class="validity"></span>
                                </div>
                                <div class="inputBx">
                                    <label for="">Location</label>
                                    <select id="month" name="month">
                                        <option>Enter Location</option>
                                    </select>
                                </div>
                                <div class="inputBx">
                                    <label for="">Upload Image</label>
                                    <input type="file" required>
                                </div>
                                <div class="inputBx">
                                    <input type="submit" class="btn" value="Submit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


        </section>
                
                <div class="banner-form login-active">
                    <div class="login-form">
                        <a href="#" class="form-cancel">
                            <i class="fa fa-times"></i>
                        </a>
                        <strong>Sign Up</strong>
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
                        <div class="form-btns">
                            <a href="#" class="forget">Forget Your Password?</a>
                            <a href="#" class="sign-up-btn">Create Account?</a>
                        </div>
                    </div>

                    <div class="sign-up-form">
                        <a href="#" class="form-cancel">
                            <i class="fa fa-times"></i>
                        </a>
                        <strong>Sign Up</strong>
                       <!--  <form action=""/web/reg_user"">
                            <input type="text" name="fullname" placeholder="Full Name" required>
                            <input type="email" name="email" placeholder="example@gmail.com" required>
                            <input type="password" name="password" placeholder="Password" required>
                            <input type="submit" value="Sign Up">
                        </form>
                        <div class="form-btns">
                            <a href="#" class="already-account">Already Have an Account?</a>
                        </div> -->
                    </div>
                </div>
                <!-- 
                
                    <div class="sign-up-form">
                        <a href="#" class="form-cancel">
                            <i class="fa fa-times"></i>
                        </a>
                        <strong>Sign Up</strong>
                       <!--  <form action=""/web/reg_user"">
                            <input type="text" name="fullname" placeholder="Full Name" required>
                            <input type="email" name="email" placeholder="example@gmail.com" required>
                            <input type="password" name="password" placeholder="Password" required>
                            <input type="submit" value="Sign Up">
                        </form>
                        <div class="form-btns">
                            <a href="#" class="already-account">Already Have an Account?</a>
                        </div> -->
                    </div>
                </div>
                
                 -->
