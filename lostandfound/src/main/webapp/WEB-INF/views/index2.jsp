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
                <li><a href="#about">About US</a></li>
                <li><a href="#post">Found Post</a></li>
                <li><a href="#post">Lost Post</a></li>
                <li><a href="#contact">Contact Us</a></li>
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
                
                <a href ="/user/displayItems">Available Items</a>
                 <a href ="/user/user_items">Your Items</a>
                 <!-- 
                  <div class="switch-btn" id="switch-title">
                    <a href="/user/displayItems" class="switch active">Available items</a>
                    <a href="/user/user_items" class="switch">Your Items</a>
                </div>
                  -->
                 
                <p>At Lost & Found, we help reunite people with their lost belongings. Our easy-to-use platform allows users to report and search for lost and found items quickly and efficiently. Join us in making lost items find their way back home!</p>
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
                            
                            <form method="post" action="/user/saveItem" enctype="multipart/form-data">
                                <h1>Found Form</h1>
                                <div class="inputBx">
                                    <label for="itemName">Item Found</label>
                                   <input type="text" id="itemName" class="form-control" placeholder="Enter Item Name"  name="itemName" required>
                                </div>
                                <div class="inputBx">
                                    <label for="">Category</label>
                                    <select class="form-control" id="category" name="category" required>
                <option value="">Select category</option>
                <option value="Electronics">Electronics</option>
                <option value="Clothing">Clothing</option>
                <option value="Books">Books</option>
                <option value="Other">Other</option>
            </select>
            <div class="form-group" id="otherCategoryGroup" style="display: none;">
            <label for="otherCategory">Other Category:</label>
            <input type="text" class="form-control" id="otherCategory" name="otherCategory">
        		</div>
               </div>
                <div class="inputBx">
            <label for="description">Description:</label>
           <input type="text" class="form-control" placeholder="Enter Description" id="description" name="description" required>
        </div>
           <div class="inputBx">
            <label for="type">Type:</label>
            <select class="form-control" id="type" name="type" required>
                <option selected value="found">Found</option>
                
            </select>
          
        		</div>
                                
                                <div class="inputBx">
                                    <label for="date">Date Found</label>
                                    <input type="date" name="date" id="date"
                                    min="2024-01-01" max="2024-12-31" placeholder="dd-mm-yyyy" required>
                                </div>
                                
                                 <div class="inputBx">
                                    <label for="location">Location</label>
                                    <select class="form-control" id="location" name="location" required>
                                       
                                        <option value="A block">A block</option>
                                        <option value="B block">B block</option>
                                        <option value="C block">C block</option>
                                        <option value="F block">F block</option>
                                        <option value="M block">M block</option>
                                        <option value="N block">N block</option>
                                        <option value="p block">P block</option>
                                        <option value="Q block">Q block</option>
                                        <option value="R block">R block</option>
                                        <option value="S block">S block</option>
                                        <option value="V block">V block</option>
                                        <option value="W block">W block</option>
                                        <option selected value="Other">other</option>
                                       
                                    </select>
                                </div>
                                 
                                <div class="inputBx">
                                    <label for="image">Upload Image : </label>
                                    <input type="file"id="image" name="image" required>
                                </div>
                                <div class="inputBx">
                                    <input type="submit" class="btn" value="submit">
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="slide" id="lost">
                        <div class="inner">
                            
                            <form method="post" action="/user/saveItem" enctype="multipart/form-data">
                                
                                <h1>Lost Form</h1>
                                 <div class="inputBx">
                                    <label for="itemName">Item Lost</label>
                                   <input type="text" id="itemName" class="form-control" placeholder="Enter Item Name"  name="itemName" required>
                                </div>
                                <div class="inputBx">
                                    <label for="">Category</label>
                                    <select class="form-control" id="category" name="category" required>
                <option value="">Select category</option>
                <option value="Electronics">Electronics</option>
                <option value="Clothing">Clothing</option>
                <option value="Books">Books</option>
                 <option value="Jewellery">Jewellery </option>
                 <option value="bag">Baggage/Bags/Luggage</option>
                <option value="Other">Other</option>
            </select>
            <div class="form-group" id="otherCategoryGroup" style="display: none;">
            <label for="otherCategory">Other Category:</label>
            <input type="text" class="form-control" id="otherCategory" name="otherCategory">
        		</div>
               </div>
               
                <div class="inputBx">
            <label for="description">Description:</label>
           <input type="text" class="form-control" placeholder="Enter Description" id="description" name="description" required>
        </div>
          <div class="inputBx">
            <label for="type">Type:</label>
            <select class="form-control" id="type" name="type" required>
                <option selected value="lost">Lost</option>
                
            </select>
          
        		</div>
        		<div class="inputBx">
                                    <label for="date">Lost Date</label>
                                    <input type="date" name="date" id="date"
                                    min="2024-01-01" max="2024-12-31" placeholder="dd-mm-yyyy" required>
                                </div>
                                
                                
                                
                                <div class="inputBx">
                                    <label for="location">Location</label>
                                    <select class="form-control" id="location" name="location" required>
                                        <option value="A block">A block</option>
                                        <option value="B block">B block</option>
                                        <option value="C block">C block</option>
                                        <option value="F block">F block</option>
                                        <option value="M block">M block</option>
                                        <option value="N block">N block</option>
                                        <option value="p block">P block</option>
                                        <option value="Q block">Q block</option>
                                        <option value="R block">R block</option>
                                        <option value="S block">S block</option>
                                        <option value="V block">V block</option>
                                        <option value="W block">W block</option>
                                        <option selected value="Other">other</option>
                                       
                                    </select>
                                </div>
                                <div class="inputBx">
                                    <label for="image">Upload Image : </label>
                                    <input type="file" id="image" name="image" required>
                                </div>
                                <div class="inputBx">
                                    <input type="submit" class="btn" value="Submit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


        </section>
                <!-- Login and Signup Form -->
                <div class="banner-form">
                    <div class="login-form">
                        <a href="#" class="form-cancel">
                            <i class="fa fa-times"></i>
                        </a>
                        <strong>Log In</strong>
                        <form action="">
                            <input type="email" name="email" placeholder="example@gmail.com" required>
                            <input type="password" name="password" placeholder="Password" required>
                            <input type="submit" value="Log In">
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
                        <form action="">
                            <input type="text" name="fullname" placeholder="Full Name" required>
                            <input type="email" name="email" placeholder="example@gmail.com" required>
                            <input type="password" name="password" placeholder="Password" required>
                            <input type="submit" value="Sign Up">
                        </form>
                        <div class="form-btns">
                            <a href="#" class="already-account">Already Have an Account?</a>
                        </div>
                    </div>
                </div>
                <!-- Login and Signup Form -->

<!-- 
 <section class="about" id="about">
            <h4 class="heading"><span>About US</span></h4>
            <div class="content">
                <p></p>
            </div>
            <div class="imgBx">
                <img src="images/about.gif" alt="">
            </div>
        </section>

 
        
 -->
       
        
        <section class="contact" id="contact">
            <h4 class="heading"><span>Contact US</span></h4>
            <div class="content">
                <div class="detail">
                    <div class="box">
                        <div class="icon"><i class="fa fa-map-marker fa-spin"></i></div>
                        <div class="text">
                            <h3>Address</h3>
                            <p>Medicaps University<br/> Indore,India</p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa fa-phone fa-spin"></i></div>
                        <div class="text">
                            <h3>Phone</h3>
                            <p>7985466321</p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon"><i class="fa fa-envelope-o fa-spin"></i></div>
                        <div class="text">
                            <h3>Email Address</h3>
                            <p>lost&found@gmail.com</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contact-form">
                <div class="form">
                    <form action="">
                        <div class="input-area">
                            <input type="text" name="" required="required">
                            <span>FULL NAME</span>
                        </div>
                        <div class="input-area">
                            <input type="text" name="" required="required">
                            <span>EMAIL ADDRESS</span>
                        </div>
                        <div class="input-area">
                            <input type="text" name="" required="required">
                            <span>SUBJECT</span>
                        </div>
                        <div class="input-area">
                            <textarea name="" required="required"></textarea>
                            <span>MESSAGE</span>
                        </div>
                        <div class="input-area">
                            <input type="submit" value="Send">
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <div class="copyright">
            <h3><a href="https://www.youtube.com/channel/UC9_8GX2uh5zBPhV7E0R9hRw?view_as=subscriber"><i class="fa fa-copyright"></i> 2024 - Lost & Found</a></h3>
        </div>
	
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
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
    <script src="/assets/js/main.js"></script>
    </body>
    </html>