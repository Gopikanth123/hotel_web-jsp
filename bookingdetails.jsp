<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
	<title>User Details</title>
    <style>
        table {
            font-family: Arial, sans-serif;
            border-collapse: separate;
            border-spacing: 0;
            width: 100%;
            margin-top: 20px;
            margin-bottom: 20px;
            background-color: #FFF;
            box-shadow: 0px 1px 6px #AAA;
        }
    
        th,td {
            text-align: left;
            padding: 12px;
        }
    
        th {
            background-color: #04AA6D;
            color: white;
        }
    
        td {
            border-bottom: 1px solid #e6e6e6;
        }
    
        tr:hover td {
            background-color: #f5f5f5;
        }
    
        tbody tr:first-child td {
            border-top: 1px solid #e6e6e6;
        }
    
        tbody tr:last-child td {
            border-bottom: 2px solid #e6e6e6;
        }
    
        tbody td:first-child {
            border-left: 2px solid #e6e6e6;
        }
    
        tbody td:last-child {
            border-right: 2px solid #e6e6e6;
        }
    
        @media screen and (max-width: 992px) {
            table {
                font-size: 12px;
            }
    
            th,
            td {
                padding: 8px;
            }
        }
    
        @media screen and (max-width: 768px) {
            table {
                font-size: 10px;
            }
    
            th,
            td {
                padding: 6px;
            }
        }
        .bot {
            position: absolute;
            bottom: 0 !important;
            left: 0;
            width: 100%;
            text-align: center;
            padding: 10px;
          }
          .end{
            color: white;
            text-align: center;
            
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
                <a class="nav-link active" href="admin.jsp">HOME<span class="sr-only">(current)</span></a>
                <a class="nav-link active" href="#">ROOM BOOKINGS</a>
                <a class="nav-link active" href="addroom.jsp">ADD ROOMS</a>
                <a class="nav-link active" href="userdetails.jsp">USER DETAILS</a>
                <a class="nav-link active" href="admindetails.jsp">ADMIN DETAILS</a>
                <a class="nav-link active" href="#">BOOKING DETAILS</a>
                <a class="nav-link active" href="transactiondetails.jsp">TRANSACTION DETAILS</a>
                <a class="nav-link active" href="ratingdetails.jsp">RATING DETAILS</a>
                <a class="nav-link active" href="contactdetails.jsp">CONTACT DETAILS</a>
                <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
            </div>
        </div>
    </nav>  
    <br><br><br>
    <center><h3 style="color: blue;"><b>BOOKING DETAILS</b></h3></center>
    <table>
        <tr>
            <th>Booking ID</th>
            <th>Email</th>
            <th>Booking Date</th>
            <th>Check-in Date</th>
            <th>Check-out Date</th>
            <th>Room Type</th>
            <th>Booked Rooms</th>
            <th>Total Amount</th>
        </tr>
        <% 
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM bookings");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                String bookingId = rs.getString("BOOKING_ID");
                String email = rs.getString("EMAIL");
                Date bookingDate = rs.getDate("BOOKDATE");
                Date checkInDate = rs.getDate("CHECKIN");
                Date checkOutDate = rs.getDate("CHECKOUT");
                String roomType = rs.getString("ROOMTYPE");
                int bookedRooms = rs.getInt("BOOKEDROOMS");
                int totalAmount = rs.getInt("TOTALAMOUNT");
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String bookingDateString = (bookingDate != null) ? dateFormat.format(bookingDate) : "";
                String checkInDateString = (checkInDate != null) ? dateFormat.format(checkInDate) : "";
                String checkOutDateString = (checkOutDate != null) ? dateFormat.format(checkOutDate) : "";
        %>
                <tr>
                    <td><%= bookingId %></td>
                    <td><%= email %></td>
                    <td><%= bookingDateString %></td>
                    <td><%= checkInDateString %></td>
                    <td><%= checkOutDateString %></td>
                    <td><%= roomType %></td>
                    <td><%= bookedRooms %></td>
                    <td><%= totalAmount %></td>
                </tr>
        <%
            }
            rs.close();
            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </table>
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
