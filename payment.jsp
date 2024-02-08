<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Advanced Payment Options</title>
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
	<link rel="stylesheet" href="https://checkout.razorpay.com/v1/checkout-css.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<style>
		.payment-container {
			display: flex;
			flex-wrap: wrap;
			align-items: center;
			justify-content: center;
			margin: 50px auto;
			max-width: 800px;
		}

		.payment-option {
			margin: 20px;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
			display: flex;
			flex-direction: column;
			align-items: center;
			text-align: center;
			width: 250px;
		}

		.payment-option h2 {
			margin-top: 0;
			margin-bottom: 20px;
		}

		.payment-option i {
			font-size: 48px;
			margin-bottom: 20px;
		}

		.payment-option button {
			margin-top: 20px;
			padding: 10px 20px;
			background-color: #007bff;
			color: #fff;
			border: none;
			border-radius: 5px;
			font-size: 18px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		.payment-option button:hover {
			background-color: #0062cc;
		}
        .payment-container {
			display: flex;
			flex-wrap: wrap;
			align-items: center;
			justify-content: center;
			margin: 50px auto;
			max-width: 800px;
		}

		.payment-option {
			margin: 20px;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
			display: flex;
			flex-direction: column;
			align-items: center;
			text-align: center;
			width: 250px;
		}

		.payment-option h2 {
			margin-top: 0;
			margin-bottom: 20px;
		}

		.payment-option i {
			font-size: 48px;
			margin-bottom: 20px;
		}

		.payment-option button {
			margin-top: 20px;
			padding: 10px 20px;
			background-color: #007bff;
			color: #fff;
			border: none;
			border-radius: 5px;
			font-size: 18px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		.payment-option button:hover {
			background-color: #0062cc;
		}
        .payment-container {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: center;
            margin: 50px auto;
            max-width: 800px;
        }
    
        .payment-option {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            width: 250px;
        }
    
        .payment-option h2 {
            margin-top: 0;
            margin-bottom: 20px;
            font-size: 24px;
        }
    
        .payment-option i {
            font-size: 48px;
            margin-bottom: 20px;
        }
    
        .payment-option button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
    
        .payment-option button:hover {
            background-color: #0062cc;
        }
    
        .payment-option img {
            margin-bottom: 20px;
        }
	</style>
</head>
<body>
    <%
    int amo=Integer.parseInt(request.getParameter("tot_cost"));
    String c1=request.getParameter("check_in");
    String c2=request.getParameter("check_out");
    String c3=request.getParameter("room_type");
    String n=request.getParameter("num_rooms");
    session.setAttribute("totalCost",amo);
    session.setAttribute("checkin",c1);
    session.setAttribute("checkout",c2);
    session.setAttribute("roomtype",c3);
    session.setAttribute("num_rooms",n);
    %>

    <br><br>
    <center><h2 style="font-weight: bolder;">CHOOSE PAYMENT METHOD</h2></center><br>
    <center><h5>your mail id : <% out.println(session.getAttribute("user")); %></h5><br>
    Total Amount : <span style="font-weight: bold;"><%= amo %></span></center>
		<div class="payment-container">
            <div class="payment-option">
                <h2>Pay with Card Number</h2>
                <img src="bank_card.png" alt="Credit card image" width="100" height="55">
                <a href="cardpay.jsp"><button>Pay Now</button></a>
            </div>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
    <div class="payment-option">
        <h2>Pay with UPI</h2>
        <img src="upi.png" alt="UPI image" width="100" height="85">
        <a href="upi.jsp"><button>Pay Now</button></a>
    </div>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
    <div class="payment-option">
        <h2>Pay with PhonePe</h2>
        <img src="phonepe.png" alt="PhonePe image" width="70" height="60">
        <a href="phonepejsp.jsp"><button>Pay Now</button></a>
    </div>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
    <div class="payment-option">
        <h2>Pay with Google Pay</h2>
        <img src="googlepay.png" alt="Google Pay image" width="90" height="40">
        <a href="gpayjsp.jsp"><button>Pay Now</button></a>
    </div>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
    <div class="payment-option">
        <h2>Pay with Paytm</h2>
        <img src="paytm.png" alt="Paytm image" width="100" height="50">
        <a href="paytmjsp.jsp"><button>Pay Now</button></a>
    </div>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp; 
    </div> 
 </body>
</html>

