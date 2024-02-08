<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Circular Progress Bar</title>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="script1.js"></script>

    
    
    <style>
      body {
        height: 130vh;
        background: linear-gradient(#06111b 50%, #181f65 50%);
        
      }

      .circular-progress {
        position: relative;
        height: 100px;
        width: 100px;
        border-radius: 50%;
        display: grid;
        place-items: center;
      }

      .circular-progress:before {
        content: "";
        position: absolute;
        height: 84%;
        width: 84%;
          background-color: #ffffff;
        border-radius: 50%;
      }

      .value-container {
        position: relative;
        font-family: "Poppins", sans-serif;
        font-size: 30px;
        color: #231c3d;
      }
      .circular-progress1 {
        position: relative;
        height: 100px;
        width: 100px;
        border-radius: 50%;
        display: grid;
        place-items: center;
      }

      .circular-progress1:before {
        content: "";
        position: absolute;
        height: 84%;
        width: 84%;
        background-color: #ffffff;
        border-radius: 50%;
      }

      .value-container1 {
        position: relative;
        font-family: "Poppins", sans-serif;
        font-size: 30px;
        color: #231c3d;
      }
      .circular-progress2 {
        position: relative;
        height: 100px;
        width: 100px;
        border-radius: 50%;
        display: grid;
        place-items: center;
      }

      .circular-progress2:before {
        content: "";
        position: absolute;
        height: 84%;
        width: 84%;
        background-color: #ffffff;
        border-radius: 50%;
      }

      .value-container2 {
        position: relative;
        font-family: "Poppins", sans-serif;
        font-size: 30px;
        color: #14093c;
      }
      .circular-progress3 {
        position: relative;
        height: 100px;
        width: 100px;
        border-radius: 50%;
        display: grid;
        place-items: center;
      }

      .circular-progress3:before {
        content: "";
        position: absolute;
        height: 84%;
        width: 84%;
        background-color: #ffffff;
        border-radius: 50%;
      }

      .value-container3 {
        position: relative;
        font-family: "Poppins", sans-serif;
        font-size: 30px;
        color: #231c3d;
      }
      .gradient-text {
        margin-bottom: 4vh;
        background-image: linear-gradient(to right, #ff4e50, #fc913a, #f9d423, #eae374, #e2f8c1);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        display: inline-block;
        font-weight: bold;
        font-family: Arial, sans-serif;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
      }
      .animated-button {
        position: relative;
        display: inline-block;
        padding: 10px 20px;
        background-color: #ea1c09;
        color: white;
        font-size: 16px;
        text-transform: uppercase;
        letter-spacing: 1px;
        border: none;
        border-radius: 50px;
        overflow: hidden;
        z-index: 1;
        transition: background-color 0.3s, transform 0.3s;
        cursor: pointer;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      }
    
      .animated-button::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(247, 247, 247, 0.3);
        transform: scaleX(0);
        transform-origin: left;
        transition: transform 0.3s;
        z-index: -1;
      }
    
      .animated-button:hover {
        background-color: #ff8b81;
        transform: scale(1.1);
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
      }
    
      .animated-button:hover::before {
        transform: scaleX(1);
      }
      .card {
        position: relative;
        transition: transform 0.3s, box-shadow 0.3s;
        border-radius: 15px;
      }
      
      .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
      }
      
      .card::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border-radius: 10px;
        border: 2px solid transparent;
        transition: border-color 0.3s;
      }
      
      .card:hover::before {
        border-color: #ffffff;
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
      

    </style>
  </head>
  <body>
    
    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#" style="font-weight: bold;">Samanvay&ensp;&ensp;&ensp;&ensp;</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav container-fluid">
                <a class="nav-link active" href="#">HOME<span class="sr-only">(current)</span></a>
                <a class="nav-link active" href="#">ROOM BOOKINGS</a>
                <a class="nav-link active" href="addroom.jsp">ADD ROOMS</a>
                <a class="nav-link active" href="userdetails.jsp">USER DETAILS</a>
                <a class="nav-link active" href="admindetails.jsp">ADMIN DETAILS</a>
                <a class="nav-link active" href="bookingdetails.jsp">BOOKING DETAILS</a>
                <a class="nav-link active" href="transactiondetails.jsp">TRANSACTION DETAILS</a>
                <a class="nav-link active" href="ratingdetails.jsp">RATING DETAILS</a>
                <a class="nav-link active" href="contactdetails.jsp">CONTACT DETAILS</a>
                <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
            </div>
        </div>
    </nav><br><br><br>
    <center>
    <!-- <h1 style="color: white;"><center>ADMIN PAGE</center></h1><br>   -->
    <h1 style="font-size: 48px;">
      <span class="gradient-text">A</span>
      <span class="gradient-text">D</span>
      <span class="gradient-text">M</span>
      <span class="gradient-text">I</span>
      <span class="gradient-text">N</span>
      <span class="gradient-text"> </span>
      <span class="gradient-text">P</span>
      <span class="gradient-text">A</span>
      <span class="gradient-text">G</span>
      <span class="gradient-text">E</span>
    </h1>
    </center>
    <div class="container">
      <!-- <button class="button login">Hello</button> -->
      <div class="float-right">
        <button class="button login">
             <% 
             out.println(session.getAttribute("user"));
             %>
        </button>
        <button class="button signup">
          <a href="logout.jsp">Logout</a>
        </button>
      </div>
    </div>
    <br><br><br>
    <%
    int totalBookedRooms = (Integer) session.getAttribute("totalBookedRooms");
    int todayBookedRooms = (Integer) session.getAttribute("todayBookedRooms");
    int yesterdayBookedRooms = (Integer) session.getAttribute("yesterdayBookedRooms");
    int rating=(Integer) session.getAttribute("sum_rating");
    float avg_rating=(float)rating/5;
    %>



  
    <div class="container" style="background-color: #06111b;">
      <div class="row">
        <div class="col-6 col-md-4 col-lg-3 mb-4">
          <div class="card text-center h-100" style="background-color: transparent !important;border: none !important;">
            <div class="card-body">
              <h5 class="card-title" style="color: white;font-size:16px;text-align:left;">TOTAL BOOKINGS</h5>
              <div class="circular-progress" data-progress-value="0" data-progress-end-value="<%=totalBookedRooms%>">
                <div class="value-container">0</div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
          <div class="card text-center h-100" style="background-color: transparent !important;border: none !important;">
            <div class="card-body">
              <h5 class="card-title" style="color: white;font-size:16px;text-align:left;">TODAY BOOKINGS</h5>
              <div class="circular-progress1" data-progress-value="0" data-progress-end-value="<%=todayBookedRooms%>">
                <div class="value-container1">0</div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
          <div class="card text-center h-100" style="background-color: transparent !important;border: none !important;">
            <div class="card-body">
              <h5 class="card-title" style="color: white;font-size:16px;text-align:left;">YESTERDAY BOOKINGS</h5>
              <div class="circular-progress2" data-progress-value="0" data-progress-end-value="<%=yesterdayBookedRooms%>">
                <div class="value-container2">0</div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-6 col-md-4 col-lg-3 mb-4">
          <div class="card text-center h-100" style="background-color: transparent !important;border: none !important;">
            <div class="card-body">
              <h5 class="card-title" style="color: white;font-size:16px;text-align:left;">AVERAGE RATING</h5>
              <div class="circular-progress3" data-progress-value="0" data-progress-end-value="<%=avg_rating%>">
                <div class="value-container3">0</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <br><br>
    <div class="container-fluid" >
      <div class="row  justify-content-between">
        <div class="col-6 col-md-4 col-lg-2 mb-4">
          <div class="card text-center h-100">
            <img src="adm1.png" class="card-img-top img-fluid" style="height: 220px;">
            <div class="card-body">
              <br>
              <h5 class="card-title" style="color: white;"><a href="userdetails.jsp"><button class="animated-button">USERS</button></a></h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        <div class="col-6 col-md-4 col-lg-2 mb-4">
          <div class="card text-center h-100">
            <img src="adm5.png" class="card-img-top img-fluid" style="height: 220px;">
            <div class="card-body">
              <br>
              <h5 class="card-title" style="color: white;"><a href="bookingdetails.jsp"><button class="animated-button">BOOKINGS</button></a></h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        <div class="col-6 col-md-4 col-lg-2 mb-4">
          <div class="card text-center h-100"><br>
            <img src="adm6.jpg" class="card-img-top img-fluid" style="height: 220px; object-fit: cover;">
            <div class="card-body">
              <h5 class="card-title" style="color: white;"><a href="transactiondetails.jsp"><button class="animated-button">TRANSACTIONS</button></a></h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        <div class="col-6 col-md-4 col-lg-2 mb-4">
          <div class="card text-center h-100">
            <img src="adm7.png" class="card-img-top img-fluid" style="height: 220px;">
            <div class="card-body">
              <br>
              <h5 class="card-title" style="color: white;"><a href="ratingdetails.jsp"><button class="animated-button">REVIEWS</button></a></h5>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
      </div>
    </div>

    
          


   
  </body>
</html>
