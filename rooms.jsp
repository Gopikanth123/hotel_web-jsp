<%@page import="java.sql.*"%>
<!DOCTYPE html>
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
          .set
          {
              font-size: medium;
              width:100%;
              margin:0px;
              padding: 0px;
              display:block;
              overflow: hidden;
              font-size: medium;
              font-weight: bolder;
              float: left;
              padding-top: 15vh;    
          }
          li:hover
          {
              background-color: brown;
          }

          .taj{

            font-style: italic;
            color: rgb(9, 38, 107);
            margin-left: 100vh !important;
            margin-bottom: -10vh !important;
        }
        .he{
            font-size: 14px;
            margin-left: 150px;
        }
        .leaf{
            width:25px;
            height:20px;
        }
        .tej{
            font-style: italic;
            color: rgb(9, 38, 107);
            margin-left: 75vh;
            margin-top: -17vh !important;            
            
        }
        .links{
            width:40%;
            margin-left: 1px;
            margin-right: 100px;
        }
        .box{
            text-align: left;
        }
        .lux{
            margin-left: 150px;
            background-color: rgb(64, 54, 54);
            width: 35%;
            height: 750px;
            font-size: large;
            word-spacing:10px;
            letter-spacing: 1px;
        }
    .b1{
    border: 2px solid black;
    margin-left:41%;
    padding-left: 30px;
    padding-right: 80px;
    padding-bottom: 235px;
    padding-top: 15px;
   }
   .i{
    position: relative;
    right:440px;
    top:80px;
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 60px;
    padding-right: 50px;
    border: 3px solid black;
    text-align: left;
   }
   .container {
    padding: 20px;
    border-radius: 5vh;
    background-color: #070707;
  }
  
  .btn-outline-dark {
    background-color: transparent;
    color: #343a40;
    border-color: #343a40;
    transition: all 0.3s ease;
  }
  
  .btn-outline-dark:hover {
    background-color: #343a40;
    color: #f7f7f7;
  }
  
  .border {
    border-radius: 10px;
  }
  
  .form-control {
    border-radius: 20px;
  }
  
  .btn-primary {
    background-color: #343a40;
    border-color: #343a40;
    border-radius: 20px;
  }
  
  .btn-primary:hover {
    background-color: #f7f7f7;
    color: #040b11;
  }
  
  .text-success {
    color: #28a745;
  }
  
  p {
    font-size: 14px;
  }
  .end{
    color: white;
    text-align: center;
    padding-top: 30px;
    
}

h1 {
  text-align: center;
  margin-top: 50px;
}
form {
  max-width: 500px;
  margin: 0 auto;
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
label {
  display: block;
  margin-bottom: 10px;
}
input[type="text"],
input[type="email"],
input[type="tel"],
input[type="date"],
input[type="number"],
input[type="month"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 20px;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0,0,0,0.1);
}
select {
  width: 100%;
  padding: 10px;
  margin-bottom: 20px;
  border-radius: 5px;
  box-shadow: 0 0 5px rgba(0,0,0,0.1);
}

.qr {
  background-color: #dc3545;
  margin-left: 10px;
}
#qr-code-container {
  margin-top: 20px;
  text-align: center;
}
#qr-code-container img {
  width: 200px;
  height: 200px;
  border: 5px solid #000000;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
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
.end{
  color: white;
  text-align: center;
  padding-top: 30px;
  
}
.qr {
  background-color: #dc3545;
  margin-left: 10px;
}
#qr-code-container {
  margin-top: 20px;
  text-align: center;
}
#qr-code-container img {
  width: 200px;
  height: 200px;
  border: 5px solid #000000;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0,0,0,0.2);
}
input[type="submit"] {
  background-color: #007bff; 
  border: none;
  color: #fff;  
  font-size: 16px;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius: 4px;
  cursor: pointer;
}


input[type="submit"]:hover {
  background-color: #053262;
}

  
        </style>
    </head>
    <body style="background-color:rgb(255, 255, 255);">
      <%
      String availableRooms1 = request.getParameter("availableRooms");
      int available_rooms=Integer.parseInt(availableRooms1);
      String room_type1 = request.getParameter("roomtype");
      String b_c1=(String) session.getAttribute("bc1");
      String b_c2=(String) session.getAttribute("bc2");
      Date d_c1=java.sql.Date.valueOf(b_c1);
      Date d_c2=java.sql.Date.valueOf(b_c2);
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
      <%
        String email=(String) session.getAttribute("user"); 
      %>
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
                    <a class="nav-link active" href="dining1.jsp">&ensp;&ensp;DINING&ensp;</a>
                    <a class="nav-link active" href="userhome.jsp">&ensp;&ensp;MEETINGS & EVENTS&ensp;&ensp;</a>
                    <a class="nav-link active" href="feedback1.jsp">&ensp;&ensp;FEEDBACK&ensp;&ensp;</a>
                    <a class="nav-link active" href="contact1.jsp">&ensp;&ensp;CONTACT US&ensp;&ensp;</a>
                    <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
                </div>
            </div>
        </nav>
        <br>
        <center>
        <h1>SAMANVAY</h1>
    <p>A Luxury Environment Friendly </p>
    <p style="margin-top: -14px;text-decoration: overline;">Boutique Hotel  &ensp; <img src="https://www.seekpng.com/png/full/78-788239_cartoon-leaf.png" class="leaf">   UDUPI</p>
    </center>
    
    <br><br>
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-md-6">
                <!-- <button type="button" class="btn btn-outline-dark btn-lg" style="color: #f7f7f7;">BOOK YOUR STAY</button> -->
                <div class="border border-dark p-4 mt-4 text-center">
                  <h4 style="color: rgb(245, 250, 248);">RESERVE YOUR STAY</h4>
                </div><br>
                <form method="post" action="payment.jsp">
                  <div class="mt-4">
                    <div class="form-group">
                      <label for="name">Name</label>
                      <input type="text" class="form-control" id="name" placeholder="Enter name" required/>
                    </div>
                    <div class="form-group">
                      <label for="email">Email</label>
                      <input type="email" class="form-control" id="email" value="<%=email%>" placeholder="Enter email" required readonly/>
                    </div>
                    <div class="form-group">
                      <label for="phone">Phone Number</label>
                      <!-- <input type="tel" class="form-control" id="phone" placeholder="Enter phone number" required/> -->
                      <input type="tel" class="form-control" id="phone" pattern="[0-9]{10}" placeholder="Enter Phone number" required/>
                    </div>
                    <div class="input-group mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text">Check in</span>
                      </div>
                      <input type="date" class="form-control" id="checkin-date" name="check_in" value="<%= b_c1 %>" readonly required/>
                      <div class="input-group-prepend">
                        <span class="input-group-text">Check out</span>
                      </div>
                      <input type="date" class="form-control" id="checkout-date" name="check_out" value="<%= b_c2 %>" readonly required/>
                    </div>

                    <div class="form-group">
                      <label for="room-type">Room Type</label>
                      <input type="text" id="room-type" name="room_type" value="<%=room_type1%>" readonly required/>
                    </div>
                    <div class="form-group">
                      <label for="guests">Number of Rooms</label>
                      <input type="number" class="form-control" id="num-rooms" name="num_rooms" min="1" max="<%=available_rooms%>" required/>
                  </div>
                    <div class="form-group">
                      <label for="guests">Number of Guests</label>
                      <input type="number" class="form-control" id="guests" min="1" max="10" required/>
                    </div>
                    <div class="form-group">
                      <label for="guests">Total Cost</label>
                      <input type="number" class="form-control" name="tot_cost" id="cost" min="1" max="10" value=0 required readonly/>
                    </div>
                    <br>
                    <center><input type="submit" value="Go To Payment"></center>
                    <br><br>
                  </div>
                </form>
                <br><br><br><br><br>
              </div>
            </div>
            </div>
            <br>          
          <br><br>
          
          <br>
          <div class="bot" style="width:100%;height:100px;background-color:black;">
            <p class="end"><a href="file:///C:/Users/gopik/project1.html" style="text-decoration:none; color:white;">Samanvay Boutique Hotel</a>&ensp;|  Website Terms of Use | Accessibility Information<br>
    
                &copy 2022. Gopikanth Tirumani All rights reserved.</p>
          
        </div>
        <script>
          
          const roomTypeInput = document.getElementById('room-type');
          const checkinDateInput = document.getElementById('checkin-date');
          const checkoutDateInput = document.getElementById('checkout-date');
          const numRoomsInput = document.getElementById('num-rooms');
          const totalCostInput = document.getElementById('cost');

          const roomTypeCosts = {
            'single': <%= c1 %>,
            'dulex': <%= c2 %>,
            'triple': <%= c3 %>,
            'luxury': <%= c4 %>,
            'suite': <%= c5 %>,
            'guest-house': <%= c6 %>
          };



          function calculateTotalCost() {
            const roomType = roomTypeInput.value;
            const checkinDate = new Date(checkinDateInput.value);
            const checkoutDate = new Date(checkoutDateInput.value);
            const numRooms = numRoomsInput.value;
            const roomTypeCost = roomTypeCosts[roomType];
            const numDays = (checkoutDate - checkinDate) / (1000 * 60 * 60 * 24);
            const totalCost = numRooms * roomTypeCost * numDays;
            totalCostInput.value = totalCost;
          }


            roomTypeInput.addEventListener('change', calculateTotalCost);
            checkinDateInput.addEventListener('change', calculateTotalCost);
            checkoutDateInput.addEventListener('change', calculateTotalCost);
            numRoomsInput.addEventListener('change', calculateTotalCost);   

              var expiryDate = document.getElementById("checkin-date");
                var today = new Date();
                today.setDate(today.getDate() + 4);
                var minDate = today.toISOString().slice(0, 10);
                expiryDate.setAttribute("min", minDate);
                var expiryDate = document.getElementById("checkout-date");
                var today = new Date();
                today.setDate(today.getDate() + 4);
                var minDate = today.toISOString().slice(0, 10);
                expiryDate.setAttribute("min", minDate);
      </script>
    </body>
</html>