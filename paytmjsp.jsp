<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html lang = "en">
   <head>
      <meta charset = "utf-8">
      <meta name = "viewport" content = "width = device-width, initial-scale = 1, shrink-to-fit = no">
      <link rel = "stylesheet" 
         href = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
         integrity = "sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
         crossorigin = "anonymous">
      <script src = "https://code.jquery.com/jquery-3.3.1.slim.min.js" 
      integrity = "sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" 
      crossorigin = "anonymous">
   </script>
   
   <script src = "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" 
      integrity = "sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" 
      crossorigin = "anonymous">
   </script>
   
   <script src = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" 
      integrity = "sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" 
      crossorigin = "anonymous">
   </script>
      <title>Pay</title>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <style>
        
        .container {
            margin-top: 50px;
            max-width: 500px;
            background-color: #f8f9fa;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.3);
          }
          
          h2 {
            text-align: center;
            margin-bottom: 30px;
          }
          
          .form-group {
            margin-bottom: 20px;
          }
          
          label {
            font-weight: 500;
            margin-bottom: 10px;
          }
          
          input[type="text"],
          input[type="email"],
          input[type="number"] {
            height: 45px;
            font-size: 16px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 10px;
          }
          
          input[type="text"]:focus,
          input[type="email"]:focus {
            outline: none;
            box-shadow: 0px 0px 10px 2px rgba(0,0,0,0.1);
          }
          
          button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            font-weight: 500;
            padding: 12px 40px;
            border: none;
            border-radius: 5px;
            transition: all 0.3s ease-in-out;
          }
          
          button[type="submit"]:hover {
            background-color: #0069d9;
            cursor: pointer;
          }
          
      </style>
   </head>
   
   <body>
    <%
        String email=(String) session.getAttribute("user");
        String checkin1=(String) session.getAttribute("checkin");
        String checkout1=(String) session.getAttribute("checkout");
        Date c1=java.sql.Date.valueOf(checkin1);
        Date c2=java.sql.Date.valueOf(checkout1);
        String room_type=(String) session.getAttribute("roomtype");
        int n_rooms=Integer.parseInt((String) session.getAttribute("num_rooms"));
        int cost=(int) session.getAttribute("totalCost");
    %>
      <div class = "container">
         <h2>CONFIRMATION</h2>
         <form method="post" action="app_db.jsp">
            <div class="form-row">
            <div class = "form-group col">
               <label for = "email">Email</label>
               <input type = "email" class = "form-control" id="email" value="<%=email%>" readonly required/>
            </div>
            <div class = "form-group col">
               <label for = "text">Room Type</label>
              <input type = "text" class = "form-control" id="room-type" name="room_type" value="<%=room_type%>" readonly required/>
           </div>
            
            </div>
            <div class="form-row">
               <div class = "form-group col">
                  <label for = "">Check In</label>
                     <input type = "text" class = "form-control" id = "check_in" value="<%=c1%>" readonly required/>
               </div>
               <div class = "form-group col">
                   <label for = "">Check Out</label>
                   <input type = "text" class = "form-control" id = "check_out" value="<%=c2%>"" readonly required/>
               </div>
            </div>
         
            <div class="form-row">
             <div class = "form-group col">
                <label for = "text">No. of Booked Rooms</label>
                <input type="number" class="form-control" id="booked_rooms" name="booked_rooms" value="<%=n_rooms%>" readonly required/>
             </div>
             <div class = "form-group col">
               <label for = "text">Total Cost</label>
               <input type="number" class="form-control" id="total_cost" name="total_cost" value="<%=cost%>" readonly required/>
            </div>
             </div>
             <div class="form-row">
               <div class = "form-group col">
                  <label for = "text">Phone Number</label>
                  <input type="tel" class="form-control" id="phone" name="phone" pattern="[0-9]{10}" placeholder="Enter Phone number" required/>
               </div>
                <div class = "form-group col">
                   <label for = "text">Payment Type</label>
                   <input type="text" class="form-control" id="payment_type" name="payment_type" value="paytm" readonly required/>
              </div>
              </div>
            <button type="submit" class="btn btn-primary" id="submit-button" class="btn btn-primary">Pay</button>
         </form>
      </div>      
   </body>
</html>
