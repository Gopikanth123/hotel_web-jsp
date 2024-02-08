<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Profile</title>
  <link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="css.css">
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
        height: 150vh;
        background: linear-gradient(#06111b 15%, #181f65 50%);
        
      }
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
  }
  
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
  }
  
  .profile {
    text-align: center;
  }
  
  .profile h1 {
    color: #333;
    font-size: 32px;
    margin-bottom: 10px;
  }
  
  .profile-info {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 20px;
  }
  
  .avatar img {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    border: 5px solid #fff;
  }
  
  .details {
    margin-left: 20px;
  }
  
  .details h2 {
    color: #333;
    font-size: 24px;
    margin-bottom: 5px;
  }
  
  .details p {
    color: #666;
    font-size: 16px;
    margin-bottom: 5px;
  }
  
  .bookings {
    margin-top: 40px;
  }
  
  .bookings h2 {
    color: #333;
    font-size: 24px;
    margin-bottom: 20px;
  }
  
  .booking-item {
    background-color: #fff;
    padding: 20px;
    margin-bottom: 20px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }
  
  .booking-info h3 {
    color: #333;
    font-size: 20px;
    margin-bottom: 10px;
  }
  
  .booking-info p {
    color: #666;
    font-size: 16px;
    margin-bottom: 5px;
  }
  
  .booking-actions button {
    background-color: #ff4d4d;
    color: #fff;
    border: none;
    padding: 8px 16px;
    cursor: pointer;
    font-size: 14px;
    border-radius: 4px;
    transition: background-color 0.3s ease;
  }
  
  .booking-actions button:hover {
    background-color: #e60000;
  }
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
  }
  
  .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
  }
  
  .profile {
    text-align: center;
  }
  
  .profile h1 {
    color: #333;
  }
  
  .profile-info {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 20px;
  }
  
  .avatar img {
    width: 100px;
    height: 100px;
    border-radius: 50%;
  }
  
  .details {
    margin-left: 20px;
  }
  
  .bookings {
    margin-top: 40px;
  }
  
  .bookings h2 {
    color: #333;
  }
  
  .booking-item {
    background-color: #fff;
    padding: 20px;
    margin-bottom: 20px;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  
  .booking-actions button {
    background-color: #ff0000;
    color: #fff;
    border: none;
    padding: 8px 16px;
    cursor: pointer;
  }
  
  .booking-actions button:hover {
    background-color: #cc0000;
  }
  body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 0;
    }
  
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
    }
  
    .profile {
      text-align: center;
    }
  
    .profile h1 {
      color: #333;
    }
  
    .profile-info {
      display: flex;
      align-items: center;
      justify-content: center;
      margin-top: 20px;
    }
  
    .avatar img {
      width: 100px;
      height: 100px;
      border-radius: 50%;
    }
  
    .details {
      margin-left: 20px;
    }
  
    .bookings {
      margin-top: 40px;
    }
  
    .bookings h2 {
      color: #333;
    }
  
    .booking-item {
      background-color: #fff;
      padding: 20px;
      margin-bottom: 20px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
  
    .booking-info {
      flex: 1;
    }
  
    .booking-info h3 {
      color: #333;
    }
  
    .booking-info p {
      margin: 5px 0;
      color: #666;
    }
  
    .booking-actions button {
      background-color: #ff0000;
      color: #fff;
      border: none;
      padding: 8px 16px;
      cursor: pointer;
      border-radius: 4px;
      transition: background-color 0.3s ease;
    }
  
    .booking-actions button:hover {
      background-color: #cc0000;
    }
  
    /* Additional CSS */
  
    .profile h1,
    .bookings h2 {
      font-size: 24px;
      margin-bottom: 10px;
    }
  
    .profile-info {
      flex-wrap: wrap;
    }
  
    .details {
      text-align: left;
      margin-top: 10px;
    }
  
    .details h2 {
      font-size: 18px;
      margin-bottom: 5px;
    }
  
    .avatar {
      position: relative;
      overflow: hidden;
      width: 120px;
      height: 120px;
      border-radius: 50%;
      margin-bottom: 20px;
      background-color: #fff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
  
    .avatar img {
      display: block;
      width: 100%;
      height: auto;
    }
  
    .bookings {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
  
    .booking-item {
      background-color: #f8f8f8;
      border: 1px solid #ddd;
    }
  
    .booking-actions button {
      background-color: #ff4d4d;
      transition: background-color 0.3s ease;
    }
  
    .booking-actions button:hover {
      background-color: #e60000;
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
    </style>
</head>

<body>
    <%
    String email=(String) session.getAttribute("user");
    String mobile=(String) session.getAttribute("phone");
    %>
    <br><br>
    <center>
      <!-- <h1 style="color: white;"><center>ADMIN PAGE</center></h1><br>   -->
      <h1 style="font-size: 40px;">
        <span class="gradient-text">U</span>
        <span class="gradient-text">S</span>
        <span class="gradient-text">E</span>
        <span class="gradient-text">R</span>
        <span class="gradient-text"></span>
        <span class="gradient-text">P</span>
        <span class="gradient-text">R</span>
        <span class="gradient-text">O</span>
        <span class="gradient-text">F</span>
        <span class="gradient-text">I</span>
        <span class="gradient-text">L</span>
        <span class="gradient-text">E</span>
      </h1>
      </center>
  <div class="container">
    <div class="profile">
      <div class="profile-info">
        <div class="avatar">
          <img src="adm1.png" class="rounded-circle image-fluid">
        </div>
        <div class="details">
            <p style="color: white;">Email: <b><u><span style="font-size: 20px;color:rgb(246, 242, 242);"><%=email%></span></u></b></p>
          <p style="color: white;">Phone: <b style="color:rgb(254, 251, 251);"><u><%=mobile%></u></b></p>
        </div>
      </div>
    </div>
    <div class="bookings">
      <h2>My Bookings</h2>
      <% 
          try {
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
              PreparedStatement pstmt = con.prepareStatement("SELECT * FROM bookings where email=?");
              pstmt.setString(1,email);
              ResultSet rs = pstmt.executeQuery();
              SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
              while (rs.next()) {
                  String bookingId = rs.getString("BOOKING_ID");
                  String email1 = rs.getString("EMAIL");
                  Date bookingDate = rs.getDate("BOOKDATE");
                  Date checkInDate = rs.getDate("CHECKIN");
                  Date checkOutDate = rs.getDate("CHECKOUT");
                  String roomType = rs.getString("ROOMTYPE");
                  int bookedRooms = rs.getInt("BOOKEDROOMS");
                  int totalAmount = rs.getInt("TOTALAMOUNT");
                  
                  String bookingDateString = (bookingDate != null) ? dateFormat.format(bookingDate) : "";
                  String checkInDateString = (checkInDate != null) ? dateFormat.format(checkInDate) : "";
                  String checkOutDateString = (checkOutDate != null) ? dateFormat.format(checkOutDate) : "";
                  Calendar calendar = Calendar.getInstance();
                  calendar.setTime(checkInDate);
                  long currentDateMillis = Calendar.getInstance().getTimeInMillis();
                  long checkInDateMillis = calendar.getTimeInMillis();
                  long daysUntilCheckIn = (checkInDateMillis - currentDateMillis) / (24 * 60 * 60 * 1000);
                  
      %>
      <div class="booking-item">
          <div class="booking-info" style="font-weight: bolder;">
              <h3 style="font-size: 20px;"><b>Booking ID: <%=bookingId%></b></h3>
              <p>Email: <%=email1%></p>
              <p>Check-in: <%=checkInDateString%></p>
              <p>Check-out: <%=checkOutDateString%></p>
              <p>Room Type: <%=roomType%></p>
          </div>
          <div class="booking-actions">
              <% if (daysUntilCheckIn >= 3) { %>
                  <button class="cancel-booking">Cancel</button>
              <% } %>
          </div>
      </div>
      <% 
              }
              rs.close();
              pstmt.close();
              con.close();
          } catch (Exception e) {
              e.printStackTrace();
          }
      %>
  </div>
  
    
    
</body>

</html>
