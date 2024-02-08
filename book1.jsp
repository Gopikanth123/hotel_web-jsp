<%@page import="java.sql.*"%>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
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
<style>
body {
    background-color: #F8F8F8;
    font-family: 'Roboto', sans-serif;
    font-size: 16px;
    color: #3B3B3B;
}
.container {
    margin-top: 50px;
    margin-bottom: 50px;
}
.card {
    border: none;
    box-shadow: 0px 1px 6px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
}
.card:hover {
    transform: translateY(-5px);
    box-shadow: 0px 1px 10px rgba(0, 0, 0, 0.3);
}
.card-title {
    font-size: 20px;
    font-weight: bold;
    margin-top: 10px;
    margin-bottom: 5px;
}
.card-text {
    margin-bottom: 5px;
    line-height: 1.5;
}
button {
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 5px 10px;
    margin-right: 10px;
    font-size: 14px;
    cursor: pointer;
    transition: all 0.3s ease;
}
button:hover {
    background-color: #0069D9;
}

#check-in, #check-out, #room-type {
    border-radius: 10px;
    padding: 8px;
    font-size: 16px;
    border-color: #ccc;
    margin-bottom: 15px;
  }

  #room-type option {
    font-size: 16px;
  }
  .bot {
    position: relative;
    bottom: 0 !important;
    left: 0;
    width: 100%;
    text-align: center;
    padding: 10px;
  }
  .end{
    color: white;
    text-align: center;
    padding-top: 30px;
    
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
            <div class="navbar-nav">
                <a class="nav-link active" href="userhome.jsp">&ensp;&ensp;HOME&ensp;&ensp;<span class="sr-only">(current)</span></a>
                <a class="nav-link active" href="gallery1.jsp">&ensp;&ensp;GALLERY&ensp;&ensp;</a>
                <a class="nav-link active" href="#">&ensp;&ensp;ROOMS&ensp;&ensp;</a>
                <a class="nav-link active" href="map1.jsp">&ensp;&ensp;LOCATION MAP&ensp;&ensp;</a>
                <a class="nav-link active" href="features1.jsp">&ensp;&ensp;HOTEL FEATURES&ensp;&ensp;</a>
                <a class="nav-link active" href="dining1.jsp">&ensp;&ensp;DINING&ensp;</a>
                <a class="nav-link active" href="userhome.jsp">&ensp;&ensp;MEETINGS & EVENTS&ensp;&ensp;</a>
                <a class="nav-link active" href="feedback1.jsp">&ensp;&ensp;RATING&ensp;&ensp;</a>
                <a class="nav-link active" href="contact1.jsp">&ensp;&ensp;CONTACT US&ensp;&ensp;</a>
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

    <br><br><br>
    <div class="container">
        <div class="row">
          <div class="col-md-6 offset-md-3">
            <div class="search-box">
              <form method="post" action="book2.jsp">
                <div class="form-group">
                  <label for="check-in">Check-In Date:</label>
                  <input type="date" class="form-control" name="checkin" id="check-in" required/>
                </div>
                <div class="form-group">
                  <label for="check-out">Check-Out Date:</label>
                  <input type="date" class="form-control" name="checkout" id="check-out" required/>
                </div>
                <button type="submit" class="btn btn-primary">Search Rooms</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <%
      int a1=0,a2=0,a3=0,a4=0,a5=0,a6=0;
      int c1=0,c2=0,c3=0,c4=0,c5=0,c6=0;
      try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
        PreparedStatement check_stm=con.prepareStatement("select * from rooms");
        ResultSet check_rs=check_stm.executeQuery();
        int[] avail=new int[6];
        int[] cost=new int[6];
        while (check_rs.next()){
          int r=check_rs.getInt("code");
          int c=check_rs.getInt("cost");
          int a=check_rs.getInt("available");
          if (r>=1 && r<=6){
            avail[r-1]=a;
            cost[r-1]=c;
          }
        }
        a1=avail[0];
        a2=avail[1];
        a3=avail[2];
        a4=avail[3];
        a5=avail[4];
        a6=avail[5];
  
        c1=cost[0];
        c2=cost[1];
        c3=cost[2];
        c4=cost[3];
        c5=cost[4];
        c6=cost[5];
        PreparedStatement stm = con.prepareStatement("SELECT ROOMTYPE, SUM(BOOKEDROOMS) AS TOTAL_BOOKED_ROOMS FROM BOOKINGS WHERE CHECKOUT > TRUNC(SYSDATE) AND ROOMTYPE IS NOT NULL GROUP BY ROOMTYPE");
        ResultSet rs1 = stm.executeQuery();
        int single_rooms=0,dulex_rooms=0,triple_rooms=0,luxury_rooms=0,suite_rooms=0,guest_house=0;
        while(rs1.next()){
              String room_type=rs1.getString("roomtype");
              int totalBookedRooms = rs1.getInt("TOTAL_BOOKED_ROOMS");
              if (room_type.equals("single")) {
                single_rooms = totalBookedRooms;
              } else if (room_type.equals("dulex")) {
                dulex_rooms = totalBookedRooms;
              }
              else if (room_type.equals("triple")){
                triple_rooms = totalBookedRooms;
              }
              else if (room_type.equals("luxury")){
                luxury_rooms = totalBookedRooms;
              }            
              else if (room_type.equals("suite")){
                suite_rooms = totalBookedRooms;
              }
              else{
                guest_house = totalBookedRooms;
              }
        }
        a1=a1-single_rooms;
        a2=a2-dulex_rooms;
        a3=a3-triple_rooms;
        a4=a4-luxury_rooms;
        a5=a5-suite_rooms;
        a6=a6-guest_house;
      }
      catch(Exception ee){
        ee.printStackTrace();
      }

  
      %>
  <div class="container">
      <div class="row">
        <div class="col-12 col-md-4 col-lg-4 mb-4">
          <div class="card text-center h-100">
            <img src="img10.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
            <div class="card-body">
              <h5 class="card-title"><b>PRESIDENTIAL SUITES</b></h5>
              <p class="card-text"><button><i class="fa fa-bed"></i> &ensp; Bed Options &ensp;</button> <button> <i class="fa fa-male"></i><i class="fa fa-female"></i> &ensp; Pax</button></p>
              <h5 class="card-title">Suite Room</h5>
                  <p class="card-text">Rate: Rs.<%=c5%> per day<br>Available Rooms: <% out.println(a5); %></p>
                  
              <br><p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&ensp;
                <button type="submit" class="btn btn-danger">Book Now</button>
            </div>
          </div>
        </div>
        <div class="col-12 col-md-4 col-lg-4 mb-4">
          <div class="card text-center h-100">
            <img src="img13.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
            <div class="card-body">
              <h5 class="card-title"><b>DELUXE ROOM</b></h5>
              <p class="card-text"><button><i class="fa fa-bed"></i> &ensp; Bed Options &ensp;</button> <button><i class="fa fa-male"></i><i class="fa fa-female"></i> &ensp; Pax</button></p>
              <h5 class="card-title">Dulex Room</h5>
                  <p class="card-text">Rate: Rs.<%=c2%> per day<br>Available Rooms: <% out.println(a2); %></p>
                  
              <br><p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&ensp;
                <button type="submit" class="btn btn-danger">Book Now</button>
                  
            </div>
          </div>
        </div>
        <div class="col-12 col-md-4 col-lg-4 mb-4">
          <div class="card text-center h-100">
            <img src="img24.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
            <div class="card-body">
              <h5 class="card-title"><b>SINGLE ROOM</b></h5>
              <p class="card-text"><button><i class="fa fa-bed"></i> &ensp; Bed Options &ensp;</button> <button><i class="fa fa-male"></i><i class="fa fa-female"></i> &ensp; Pax</button></p>
              <h5 class="card-title">Single Room</h5>
                  <p class="card-text">Rate: Rs.<%=c1%> per day<br>Available Rooms: <% out.println(a1); %></p>
                  
              <br><p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&ensp;
                <button type="submit" class="btn btn-danger">Book Now</button>
                  
            </div>
          </div>
        </div>
      </div>
  </div>
  </div>
  <br>
  <div class="container">
    <div class="row">
      <div class="col-12 col-md-4 col-lg-4 mb-4">
        <div class="card text-center h-100">
          <img src="img10.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
          <div class="card-body">
            <h5 class="card-title"><b>LUXYRY ROOM</b></h5>
            <p class="card-text"><button><i class="fa fa-bed"></i> &ensp; Bed Options &ensp;</button> <button> <i class="fa fa-male"></i><i class="fa fa-female"></i> &ensp; Pax</button></p>
            <h5 class="card-title">Luxury Room</h5>
                <p class="card-text">Rate: Rs.<%=c4%> per day<br>Available Rooms: <% out.println(a4); %></p>
              <br><p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&ensp;
                <button type="submit" class="btn btn-danger">Book Now</button>
                
          </div>
        </div>
      </div>
      <div class="col-12 col-md-4 col-lg-4 mb-4">
        <div class="card text-center h-100">
          <img src="img13.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
          <div class="card-body">
            <h5 class="card-title"><b>TRIPLE ROOM</b></h5>
            <p class="card-text"><button><i class="fa fa-bed"></i> &ensp; Bed Options &ensp;</button> <button><i class="fa fa-male"></i><i class="fa fa-female"></i> &ensp; Pax</button></p>
            <h5 class="card-title">Triple Room</h5>
                <p class="card-text">Rate: Rs.<%=c3%> per day<br>Available Rooms: <% out.println(a3); %></p>
              <br><p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&ensp;
                <button type="submit" class="btn btn-danger">Book Now</button>
                
          </div>
        </div>
      </div>
      <div class="col-12 col-md-4 col-lg-4 mb-4">
        <div class="card text-center h-100">
          <img src="img24.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
          <div class="card-body">
            <h5 class="card-title"><b>GUEST HOUSE</b></h5>
            <p class="card-text"><button><i class="fa fa-bed"></i> &ensp; Bed Options &ensp;</button> <button><i class="fa fa-male"></i><i class="fa fa-female"></i> &ensp; Pax</button></p>
            <h5 class="card-title">Guest House</h5>
                <p class="card-text">Rate: Rs.<%=c6%> per day<br>Available Rooms: <% out.println(a6); %></p>
              <br><p><span class="spinner-border spinner-grow text-danger " style="width: 20px; height:20px;"></span>&ensp;
                <button type="submit" class="btn btn-danger">Book Now</button>
                
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
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
  <script>
    var expiryDate = document.getElementById("check-in");
            var today = new Date();
            today.setDate(today.getDate() + 4);
            var minDate = today.toISOString().slice(0, 10);
            expiryDate.setAttribute("min", minDate);
            var expiryDate = document.getElementById("check-out");
            var today = new Date();
            today.setDate(today.getDate() + 4);
            var minDate = today.toISOString().slice(0, 10);
            expiryDate.setAttribute("min", minDate);          
  </script>
      </body>
      </html>