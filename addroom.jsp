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

#no_of_rooms, #room-type {
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
                <a class="nav-link active" href="admin.jsp">HOME<span class="sr-only">(current)</span></a>
                <a class="nav-link active" href="#">ROOM BOOKINGS</a>
                <a class="nav-link active" href="#">ADD ROOMS</a>
                <a class="nav-link active" href="userdetails.jsp">USER DETAILS</a>
                <a class="nav-link active" href="admindetails.jsp">ADMIN DETAILS</a>
                <a class="nav-link active" href="bookingdetails.jsp">BOOKING DETAILS</a>
                <a class="nav-link active" href="transactiondetails.jsp">TRANSACTION DETAILS</a>
                <a class="nav-link active" href="ratingdetails.jsp">RATING DETAILS</a>
                <a class="nav-link active" href="contactdetails.jsp">CONTACT DETAILS</a>
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

    <br><br>
    <center><h2>UPDATE THE NUMBER OF ROOMS</h2></center>
    <br>
    <div class="container">
        <div class="row">
          <div class="col-md-6 offset-md-3">
            <div class="search-box">
              <form method="post" action="modifyrooms.jsp">
                <div class="form-group">
                  <label for="room-type">Room Type:</label>
                  <select class="form-control" id="room-type" name="roomType">
                    <option value="0">All</option>
                    <option value="1">Single Room</option>
                    <option value="2">Dulex Room</option>
                    <option value="3">Triple Room</option>
                    <option value="4">Luxury Room</option>
                    <option value="5">Suite Room</option>
                    <option value="6">Guest House</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="no_of_rooms">Update number of rooms:</label>
                  <input type="number" class="form-control" id="no_of_rooms" name="noOfrooms" min="1" max="100">
                </div>
                <div class="form-group">
                  <label for="cost">Update cost of rooms:</label>
                  <input type="number" class="form-control" id="cost" name="cost" min="1" max="1000">
                </div>
                <button type="submit" class="btn btn-primary">Update rooms</button>
              </form>
            </div>
          </div>
        </div>
      </div>
      
      <center style="font-weight: bolder;color:rgb(130, 27, 27);">
        <% 
            String n=(String) session.getAttribute("room");
            if (n!=null){
              out.println(n);
            }
            session.removeAttribute("room");
        %>
    </center> 
    <br>      
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
                <p class="card-text">Rate: $<%=c5%> per day<br>Available Rooms: <% out.println(a5); %></p>
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
                <p class="card-text">Rate: $<%=c2%> per day<br>Available Rooms: <% out.println(a2); %></p>
                
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
                <p class="card-text">Rate: $<%=c1%> per day<br>Available Rooms: <% out.println(a1); %></p>
                
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
              <p class="card-text">Rate: $<%=c4%> per day<br>Available Rooms: <% out.println(a4); %></p>
              
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
              <p class="card-text">Rate: $<%=c3%> per day<br>Available Rooms: <% out.println(a3); %></p>
              
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
              <p class="card-text">Rate: $<%=c6%> per day<br>Available Rooms: <% out.println(a6); %></p>
              
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
          <a href="adminhome.jsp" style="text-decoration:none; color:white;">Samanvay Boutique Hotel</a>&ensp;|&ensp;Website Terms of Use | Accessibility Information<br>
          &copy; 2022. Gopikanth Tirumani All rights reserved.
        </p>
      </div>
    </div>
  </div>
</footer>
    </body>
    </html>