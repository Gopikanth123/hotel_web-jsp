<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Contact Us</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://demo.voidcoders.com/htmldemo/fitgear/main-files/assets/css/animate.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <style>
    .li1
        {
            list-style-type:none;
            display: box;
            display:flex;
            text-align: center;
            width:100%;
            margin-right: -10px;
            margin-left: 45px;
            margin-top: -8px;
            background-color: rgb(215, 211, 211);
        }   
        .set
        {
            font-size: medium;
            width:107%;
            margin:0px;
            padding: 0px;
            display:block;
            overflow: hidden;
            font-size: medium;
            font-weight: bolder;
            float: left;
            padding-top: 15px; 
            padding-bottom: 15px;   
        }
        .li1 :hover
        {
            background-color: brown;
        }
        .end{
            color: white;
            text-align: center;
            padding-top: 30px;
            
        }
        .bot {
            position: relative;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: #f1f1f1;
            text-align: center;
            padding: 10px;
          }
          .button {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #fff;
            text-align: center;
            text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
            background-color: #2ecc71;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
          }
          
          /* Style for login button */
          .login {
            background-color: #3498db;
          }
          
          /* Style for sign-up button */
          .signup {
            background-color: #e67e22;
          }
          
          /* Hover styles for the buttons */
          .button:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 10px rgba(0,0,0,0.2);
          }
          
          /* Active styles for the buttons */
          .button:active {
            transform: translateY(-1px);
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
          }
          
          /* Styles for the anchor tags within the buttons */
          .button a {
            color: #fff;
            text-decoration: none;
          }
          
          /* Style for the container div */
          .container {
            position: relative;
            margin-top: 20px;
          }
          
          /* Style for the float-right div */
          .float-right {
            position: absolute;
            top: 50%;
            right: 0;
            transform: translateY(-50%);
          }
        
        
    li,ul{
      list-style:none;
      padding:0;
      margin:0;
    }
    .sec-title
    {
      position:relative;
      padding-bottom:40px;
    }
    .sec-title .title
    {
      position:relative;
      color:#74088f;
      font-size:18px;
      font-weight:700;
      padding-right:50px;
      margin-bottom:15px;
      display:inline-block;
      text-transform:capitalize;
    }
    .sec-title .title:before{
      position:absolute;
      content:'';
      right:0;
      bottom:7px;
      width:40px;
      height:1px;
      background-color:#bbb;
    }
    .sec-title h2
    {position:relative;
      color:#252525;
      font-size:36px;
      font-weight:700;
      line-height:1.5em;
      display:block;
    }
    .sec-title.light h2{
      color:#a51313;
    }
    .contact-page-section
    {
      position:relative;
      padding-top:0px; 
      padding-bottom: 110px;
    }
    .contact-page-section .inner-container
    {
      position:relative;
      z-index:1;
      background-color:#36032f;
      box-shadow:0 0 15px 5px rgba(0,0,0,.1);
    }
    .contact-page-section .form-column
    {
      position:relative;
      padding:0 0 0 15px;
    }
    .contact-page-section .form-column .inner-column{
      position:relative;
      padding:60px 45px 30px;
      background-color:#fff;
    }
    .contact-page-section .info-column
    {
      position:relative;
    }
    .contact-page-section .info-column .inner-column
    {
      position:relative;
      padding:60px 35px;
    }
    .contact-page-section .info-column h2
    {
      position:relative;
      color:#fff;
      font-size:30px;
      font-weight:700;
      line-height:1.4em;
      margin-bottom:45px;
    }
    .contact-page-section .info-column .list-info
    {
      position:relative;
      margin-bottom:60px;
    }
    .contact-page-section .info-column .list-info li
    {
      position:relative;
      margin-bottom:25px;
      font-size:18px;
      color:#fff;
      line-height:1.8em;
      padding-left:45px;
    }
    .contact-page-section .info-column .list-info li:last-child
    {
      margin-bottom:0;
    }
    .contact-page-section .info-column .list-info li i
    {
      position:absolute;
      left:0;
      top:8px;
      color:#fff;
      font-size:30px;
    }
    .contact-form
    {
      position:relative
    }.contact-form .form-group{position:relative;margin-bottom:20px}.contact-form input[type=text],.contact-form input[type=email],.contact-form input[type=tel],.contact-form textarea{position:relative;display:block;width:100%;height:60px;color:#222;font-size:14px;line-height:38px;padding:10px 30px;border:1px solid #ddd;background-color:#fff;transition:all .3s ease;-ms-transition:all .3s ease;-webkit-transition:all .3s ease}.contact-form input[type=text]:focus,.contact-form input[type=email]:focus,.contact-form textarea:focus{border-color:#00b8ca}.contact-form textarea{height:250px;resize:none}.contact-form .theme-btn{font-size:16px;font-weight:700;margin-top:10px;text-transform:capitalize;padding:16px 39px;border:2px solid #00b8ca;font-family:Arimo,sans-serif;background:#00b8ca;display:inline-block;position:relative;line-height:24px;cursor:pointer;color:#fff}.contact-form .theme-btn:hover{color:#00b8ca;border-color:#00b8ca;background:0 0}.contact-form input.error,.contact-form select.error,.contact-form textarea.error{border-color:red!important}.contact-form label.error{display:block;line-height:24px;padding:5px 0 0;margin:0;text-transform:uppercase;font-size:12px;color:red;font-weight:500}.social-icon-four{position:relative}.social-icon-four li{position:relative;margin-right:18px;display:inline-block}.social-icon-four li.follow{color:#fff;font-weight:600;font-size:24px;display:block;margin-bottom:20px}.social-icon-four li a{position:relative;font-size:20px;color:#fff;-webkit-transition:all .3s ease;-ms-transition:all .3s ease;-o-transition:all .3s ease;-moz-transition:all .3s ease;transition:all .3s ease}.social-icon-four li a:hover{color:#222}
  </style>
</head>
<body>
<!-- partial:index.partial.html -->
<nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#" style="font-weight: bold;">Samanvay&ensp;&ensp;&ensp;&ensp;</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-link active" href="userhome.jsp">&ensp;&ensp;HOME&ensp;&ensp;<span class="sr-only">(current)</span></a>
            <a class="nav-link active" href="gallery1.jsp">&ensp;&ensp;GALLERY&ensp;&ensp;</a>
            <a class="nav-link active" href="book1.jsp">&ensp;&ensp;ROOMS&ensp;&ensp;</a>
            <a class="nav-link active" href="map1.jsp">&ensp;&ensp;LOCATION MAP&ensp;&ensp;</a>
            <a class="nav-link active" href="features1.jsp">&ensp;&ensp;HOTEL FEATURES&ensp;&ensp;</a>
            <a class="nav-link active" href="feedback1.jsp">&ensp;&ensp;DINING&ensp;</a>
            <a class="nav-link active" href="userhome.jsp">&ensp;&ensp;MEETINGS & EVENTS&ensp;&ensp;</a>
            <a class="nav-link active" href="feedback1.jsp">&ensp;&ensp;RATING&ensp;&ensp;</a>
            <a class="nav-link active" href="#">&ensp;&ensp;CONTACT US&ensp;&ensp;</a>
            <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
        </div>
    </div>
</nav>  
<br><br><br><br>
    <div class="container">
        <div class="float-right">
            <button class="button login">
                <a href="#">
                    <% 
                        out.println(session.getAttribute("user"));
                    %>
                    </a>
            </button>
            <button class="button signup">
                <a href="logout.jsp">Logout</a>
            </button>
        </div>
    </div>
    <br>
    <center style="font-weight: bolder;">
      <% 
          String n1=(String) session.getAttribute("msg1");
          if (n1!=null){
            out.println(n1);
          }
          session.removeAttribute("msg1");
      %>
  </center>
<section class="contact-page-section">
      <div class="container">
          <div class="sec-title">
              <div class="title">Contact Us</div>
                <h2>Let's Get in Touch.</h2>
            </div>
            <div class="inner-container" style="border-radius: 20px;">
              <div class="row clearfix">
                
                  <!--Form Column-->
                    <div class="form-column col-md-8 col-sm-12 col-xs-12">
                      <div class="inner-column"  style="border-radius: 20px;background-color:rgb(255, 255, 255);">
                          
                            <!--Contact Form-->
                            <div class="contact-form" >
                                <form method="post" action="contact.jsp" id="contact-form">
                                    <div class="row clearfix">
                                        <div class="form-group col-md-6 col-sm-6 co-xs-12">
                                            <input type="text" name="name" value="" placeholder="Name" style="border-radius: 10px;" required>
                                        </div>
                                        <div class="form-group col-md-6 col-sm-6 co-xs-12">
                                            <input type="email" name="email" value="" placeholder="Email" style="border-radius: 10px;" required>
                                        </div>
                                        <div class="form-group col-md-6 col-sm-6 co-xs-12">
                                            <input type="text" name="subject" value="" placeholder="Subject" style="border-radius: 10px;" required>
                                        </div>
                                        <div class="form-group col-md-6 col-sm-6 co-xs-12">
                                            <!-- <input type="text" name="phone" value="" placeholder="Phone" style="border-radius: 10px;" required> -->
                                            <input type="tel" name="phone"  pattern="[0-9]{10}" placeholder="Phone" style="border-radius: 10px;" required/>
                                        </div>
                                        <div class="form-group col-md-12 col-sm-12 co-xs-12">
                                            <textarea name="message" placeholder="Message" style="border-radius: 10px;"></textarea>
                                        </div>
                                        <div class="form-group col-md-12 col-sm-12 co-xs-12">
                                            <button type="submit" class="theme-btn btn-style-one" style="border-radius: 10px;">Send Now</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!--End Contact Form-->
                            
                        </div>
                    </div>
                    
                    <!--Info Column-->
                    <div class="info-column col-md-4 col-sm-12 col-xs-12">
                      <div class="inner-column">
                          <h2>Contact Info</h2>
                            <ul class="list-info">
                              <li><i class="fas fa-globe"></i>Near Perupalem Beech, Perupalem, Moagalthur Andhra Pradesh</li>
                                <li><i class="far fa-envelope"></i>gopikanth092@gmail.com</li>
                                <li><i class="fas fa-phone"></i>9014903646 <br> 9870765423</li>
                            </ul>
                            <ul class="social-icon-four">
                                <li class="follow">Follow on: </li>
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <br>
    <footer class="fixed-bottom" style="background-color: black;">
        <div class="container-fluid">
          <div class="row">
            <div class="col text-center">
              <p style="color: white;">
                <a href="userhome.jsp" style="text-decoration:none; color:white;">Samanvay Boutique Hotel</a>&ensp;|&ensp;Website Terms of Use | Accessibility Information<br>
                &copy; 2022. Gopikanth Tirumani All rights reserved.
              </p>
            </div>
          </div>
        </div>
      </footer>
<!-- partial -->
  <script src='https://code.jquery.com/jquery-2.1.0.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js'>
    
</script>
</body>
</html>