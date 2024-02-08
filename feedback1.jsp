<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>Rating Form</title>
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
    <style>

       
      .rating {
        display: flex;
        flex-direction: row-reverse;
        justify-content: center;
        align-items: center;
        font-size: 30px;
        text-align: center;
        height: 20vh;
      }
      
      .rating input[type=radio] {
        display: none;
      }
      .rating label {
        cursor: pointer;
        font-size: 3em;
        color: #ddd;
      }
      .rating label:hover,
      .rating label:hover ~ label,
      .rating input[type=radio]:checked ~ label {
        color: orange;
      }
      .bot {
        position: absolute;
        bottom: 0 !important;
        left: 0;
        width: 100% !important;
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
      input[type="submit"] {
        background-color: #544caf;
        border: none;
        color: white;
        padding: 12px 24px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 4px;
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
              <a class="nav-link active" href="book1.jsp">&ensp;&ensp;ROOMS&ensp;&ensp;</a>
              <a class="nav-link active" href="map1.jsp">&ensp;&ensp;LOCATION MAP&ensp;&ensp;</a>
              <a class="nav-link active" href="features1.jsp">&ensp;&ensp;HOTEL FEATURES&ensp;&ensp;</a>
              <a class="nav-link active" href="dining1.jsp">&ensp;&ensp;DINING&ensp;</a>
              <a class="nav-link active" href="userhome.jsp">&ensp;&ensp;MEETINGS & EVENTS&ensp;&ensp;</a>
              <a class="nav-link active" href="#">&ensp;&ensp;RATING&ensp;&ensp;</a>
              <a class="nav-link active" href="contact1.jsp">&ensp;&ensp;CONTACT US&ensp;&ensp;</a>
              <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
          </div>
      </div>
  </nav>
  <br><br><br>
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
            String n=(String) session.getAttribute("msg");
            if (n!=null){
              out.println(n);
            }
            session.removeAttribute("msg");
        %>
    </center>
    <br><br><br>
    <center><h1 style="color: #0e0c0c; font-weight:bolder;font-style:italic;">Rate our service:</h1></center>
    <form action="comment.jsp">
      <div class="rating">
        <input type="radio" id="5" name="rating" value="5" required>
        <label for="5">&#9733;</label>
        <input type="radio" id="4" name="rating" value="4">
        <label for="4">&#9733;</label>
        <input type="radio" id="3" name="rating" value="3">
        <label for="3">&#9733;</label>
        <input type="radio" id="2" name="rating" value="2">
        <label for="2">&#9733;</label>
        <input type="radio" id="1" name="rating" value="1">
        <label for="1">&#9733;</label>
      </div>    
      <br>
      <div class="container">
        <h2>MAKE A COMMENT FOR OUR SERVICES</h2>
          <div class="form-group">
            <label for="comment">Comment:</label>
            <textarea class="form-control" rows="5" id="comment" placeholder="Enter your comment" name="comment"></textarea>
          <div>
          <br><br>
          <button type="submit" onclick="validateForm()" class="btn btn-primary">Submit</button>
    </form>
  
      <br><br><br><br><br><br><br><br>
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
        function validateForm() {
          var ratingInputs = document.getElementsByName("rating");
          var ratingSelected = false;
          for (var i = 0; i < ratingInputs.length; i++) {
            if (ratingInputs[i].checked) {
              ratingSelected = true;
              break;
            }
          }
          if (!ratingSelected) {
            alert("Please select a rating.");
            return false;
          }
          var comment = document.getElementsByName("comment")[0];
  if (comment.value == "") {
    for (var i = 0; i < ratingInputs.length; i++) {
      if (ratingInputs[i].checked) {
        var rating = ratingInputs[i].value;
        break;
      }
    }
    switch (rating) {
      case "1":
        comment.value = "Worse";
        break;
      case "2":
        comment.value = "Not Bad";
        break;
      case "3":
        comment.value = "Nice";
        break;
      case "4":
        comment.value = "Good";
        break;
      case "5":
        comment.value = "Excellent";
        break;
    }
  }
}
        </script>


  </body>
</html>
