<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Payment Successful</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
        <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Payment Successful UI</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-gWz5rG4H7oVf/3eymKf+mfUm3PFkIwlC/9douSbpljDzgqh0vvl1DPhgIwHI5/JoVGQGfj5ktK8YvA17NpF4lw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" integrity="sha384-+RK/bjfd5GAiIwGJCiz7H9LbKPyJhzLwr4Iu7FpNngwQCL6FjNIBzOfoB7uKF7a" crossorigin="anonymous">
    <style>         
body {
    font-family: "Helvetica Neue", sans-serif;
    font-size: 16px;
    line-height: 1.5;
    color: #333;
  }
  
  .success-heading {
    margin-top: 1rem;
    font-size: 3rem;
    font-weight: bold;
    text-align: center;
  }
  
  .success-icon {
    display: block;
    margin: 2rem auto;
    color: #3cba54;
    animation: zoom-in 0.5s ease-in-out;
  }
  
  .success-message {
    margin: 1rem auto 3rem auto;
    font-size: 1.2rem;
    text-align: center;
  }
  
  table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 1rem;
    background-color: transparent;
    font-size: 1rem;
    border-collapse: collapse;
  }
  
  th,
  td {
    padding: 0.75rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
  }
  
  thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #dee2e6;
  }
  
  /* Button */
  .success-btn {
    display: block;
    margin: 2rem auto 1rem auto;
    border-radius: 50px;
    font-weight: bold;
    text-transform: uppercase;
    background-color: #3cba54;
    border-color: #3cba54;
    animation: slide-up 0.5s ease-in-out;
  }
  
  .success-btn:hover {
    background-color: #2c8a3e;
    border-color: #2c8a3e;
  }
  
  @keyframes slide-up {
    0% {
      transform: translateY(100%);
      opacity: 0;
    }
    100% {
      transform: translateY(0);
      opacity: 1;
    }
  }
  
  @keyframes zoom-in {
    0% {
      transform: scale(0);
      opacity: 0;
    }
    100% {
      transform: scale(1);
      opacity: 1;
    }
  }
.success-details table {
    border-collapse: separate;
    border-spacing: 0;
    width: 100%;
    max-width: 100%;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    overflow: hidden;
  }
  
  .success-details th {
    padding: 12px 15px;
    text-align: left;
    background-color: #f5f5f5;
    border-bottom: 1px solid #ddd;
    font-size: 14px;
    font-weight: normal;
  }
  
  .success-details td {
    padding: 12px 15px;
    text-align: left;
    border-bottom: 1px solid #ddd;
    font-size: 14px;
  }
  
  .success-details tr:last-child td {
    border-bottom: none;
  }
  
  .success-details tr:hover {
    background-color: #f5f5f5;
  }
  
  
    </style>
</head>
<body>
    <%
        String payment=(String) session.getAttribute("payment_type1");
        session.removeAttribute("payment_type1");
        String email=(String) session.getAttribute("user");
        int cost=(int) session.getAttribute("totalCost");
        String t_id=(String) session.getAttribute("t_id");
        session.removeAttribute("t_id");
        String book_id=(String) session.getAttribute("book_id");
        session.removeAttribute("book_id");
    %>
    <%
        if((payment.equals("phonepe")) || (payment.equals("gpay")) || (payment.equals("paytm")))
        {
            String mobile=request.getParameter("phone");
    %>
            <div class="container-fluid success-container">
                <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="success-box">
                        <i class="fas fa-check fa-5x success-icon"></i>
                        <h1 class="success-heading" style="color: #2c8a3e;">Payment Successful!</h1>
                        <p class="success-message">Thank you for your booking.</p>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="success-details">
                                    <h4 style="font-style: normal;"><b>Transaction Details</b>:</h4>
                                    <table class="table" style="font-weight: bold;border-radius 10px;border-collapse: collapse;"">
                                        <tbody>
                                            <tr>
                                                <td>Payment Type:</td>
                                                <td><%=payment%></td>
                                            </tr>
                                            <tr>
                                                <td>Transaction Id:</td>
                                                <td><%=t_id%></td>
                                            </tr>
                                            <tr>
                                                <td>Booking Id:</td>
                                                <td><%=book_id%></td>
                                            </tr>
                                            <tr>
                                                <td>Mobile:</td>
                                                <td><%=mobile%></td>
                                            </tr>
                                            <tr>
                                                <td>Email:</td>
                                                <td><%=email%></td>
                                            </tr>
                                            <tr>
                                                <td>Total Amount:</td>
                                                <td><%=cost%></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    <button onclick="printTable()" style="border-radius: 5px;border: 2px solid black;">print</button>
                    <a href="userhome.jsp" class="btn btn-primary success-btn">Return to Home</a>
                </div>
            </div>
        </div>
    </div>
    <%
    }
    else if(payment.equals("UPI")){
        String id=request.getParameter("upi_id");
    %>
    <div class="container-fluid success-container">
        <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="success-box">
                <i class="fas fa-check fa-5x success-icon"></i>
                <h1 class="success-heading" style="color: #2c8a3e;">Payment Successful!</h1>
                <p class="success-message">Thank you for your booking.</p>
                <div class="row">
                    <div class="col-md-6">
                        <div class="success-details">
                            <h4 style="font-style: normal;"><b>Transaction Details</b>:</h4>
                            <table class="table" style="font-weight: bold;border-radius 10px;border-collapse: collapse;"">
                                <tbody>
                                    <tr>
                                        <td>Payment Type:</td>
                                        <td><%=payment%></td>
                                    </tr>
                                    <tr>
                                        <td>Transaction Id:</td>
                                        <td><%=t_id%></td>
                                    </tr>
                                    <tr>
                                                <td>Booking Id:</td>
                                                <td><%=book_id%></td>
                                            </tr>
                                    <tr>
                                        <td>UPI ID:</td>
                                        <td><%=id%></td>
                                    </tr>
                                    <tr>
                                        <td>Email:</td>
                                        <td><%=email%></td>
                                    </tr>
                                    <tr>
                                        <td>Total Amount:</td>
                                        <td><%=cost%></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            <button onclick="printTable()" style="border-radius: 5px;border: 2px solid black;">print</button>
            <a href="userhome.jsp" class="btn btn-primary success-btn">Return to Home</a>
        </div>
    </div>
</div>
</div>
    <%
    }
    else{
           String name=request.getParameter("holder_name");
           String card_num=request.getParameter("card_number");
        %>
        <div class="container-fluid success-container">
            <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="success-box">
                    <i class="fas fa-check fa-5x success-icon"></i>
                    <h1 class="success-heading" style="color: #2c8a3e;">Payment Successful!</h1>
                    <p class="success-message">Thank you for your booking.</p>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="success-details">
                                <h4 style="font-style: normal;"><b>Transaction Details</b>:</h4>
                                <table class="table" style="font-weight: bold;border-radius 10px;border-collapse: collapse;"">
                                    <tbody>
                                        <tr>
                                            <td>Payment Type:</td>
                                            <td><%=payment%></td>
                                        </tr>
                                        <tr>
                                            <td>Transaction Id:</td>
                                            <td><%=t_id%></td>
                                        </tr>
                                        <tr>
                                                <td>Booking Id:</td>
                                                <td><%=book_id%></td>
                                            </tr>
                                        <tr>
                                            <td>Card Number:</td>
                                            <td><%=card_num%></td>
                                        </tr>
                                        <tr>
                                            <td>Card Holder Name:</td>
                                            <td><%=name%></td>
                                        </tr>
                                        <tr>
                                            <td>Email:</td>
                                            <td><%=email%></td>
                                        </tr>
                                        <tr>
                                            <td>Total Amount:</td>
                                            <td><%=cost%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                <button onclick="printTable()" style="border-radius: 5px;border: 2px solid black;">print</button>
                <a href="userhome.jsp" class="btn btn-primary success-btn">Return to Home</a>
            </div>
        </div>
    </div>
    </div>
    <%
    }
    %>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    <script>
        function printTable() {
			window.print();
		}
    </script>
</body>
</html>
