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
            <style>
                img {
  width: 100%;
  height: 300px;
  object-fit: cover;
  object-position: bottom;
}
                .li
        {
            list-style-type:none;
            display: box;
            display:flex;
            text-align: center;
            width:101.5%;
            margin-right: 50px;
            margin-left: -10px;
            margin-top: -3px;
            background-color: rgb(215, 211, 211);
        }   
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
            padding-top: 15px;    
        }
        li:hover
        {
            background-color: brown;
        }
               .i1{
                 width: 30%;
                 height: 230px;
                 margin: 50px;
                 margin-bottom: -20px;
                }
                .tt{
                    width: 60%;
                    height:570px;
                    margin-left: 19.3%;
                }
                .ball{
                    text-align: center;
                    margin-top: -20px;
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
                        <div class="navbar-nav container-fluid">
                            <a class="nav-link active" href="adminhome.jsp">HOME<span class="sr-only">(current)</span></a>
                            <a class="nav-link active" href="#">GALLERY</a>
                            <a class="nav-link active" href="">ADD ROOMS</a>
                            <a class="nav-link active" href="userdetails.jsp">User Details</a>
                            <a class="nav-link active" href="admindetails.jsp">ADMIN DETAILS</a>
                            <a class="nav-link active" href="#">BOOKING DETAILS</a>
                            <a class="nav-link active" href="adminhome.jsp">MEETINGS & EVENTS</a>
                            <a class="nav-link active" href="ratingdetails.jsp">RATING DETAILS</a>
                            <a class="nav-link active" href="contactdetails.jsp">CONTACT DETAILS</a>
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
            <div class="position:relative; top:100px;"><br>
    <h1 style="font-size: 60px; position: relative;top:35px; color:rgb(96, 88, 88);"><i><center>Welcome To Samanvay Hotel</center></i></h1><br>
    <p><center><b style="font-size:20px;">A dazzling mix of legendary sights and natural beauty, backed with a bold cultural heritage</b></center></p>
    <br>
      <br>

     <div class="container">
        <div class="row">
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img54.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img53.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img12.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
        </div>
      </div><br>
      
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img55.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img34.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img35.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
        </div>
      </div><br>
      
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img36.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img37.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img57.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
        </div>
      </div><br>
      
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img39.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img40.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img58.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
        </div>
      </div><br>
      
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img42.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img43.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img44.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
        </div>
      </div><br>
      
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img45.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img46.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img47.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
        </div>
      </div><br>
      
      <div class="container">
        <div class="row">
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img48.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img49.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
          <div class="col-12 col-md-4 col-lg-4 mb-4">
            <div class="card text-center h-100">
              <img src="img50.jpg" class="card-img-top img-fluid" style="height: 250px; object-fit: cover;">
              <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
        </div>
      </div>
      
        </div><br><br><br><br>
        <h1 style="font-size:60px;color:rgb(41, 37, 37)"><i><center>Beautiful View</center></i></h1><br>
        <p style="margin-top:-30px;"><center><b style="font-size:20px;">Samanvay Hotel is located at the most beautiful and serene part of Perupalem;</b></center><br><center><b style="font-size:20px;"> undisturbed and yet close to the bustling heart of the city.</b></center></p>
        <br>
        <div class="container">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="2500">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators"  data-slide-to="0" class="active">-</li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1">-</li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2">-</li>
              <li data-target="#carouselExampleIndicators" data-slide-to="3">-</li>
              <li data-target="#carouselExampleIndicators" data-slide-to="4">-</li>
              <li data-target="#carouselExampleIndicators" data-slide-to="5">-</li>
              <li data-target="#carouselExampleIndicators" data-slide-to="6">-</li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100 rounded corro" src="img35.jpg" style="height: 80vh !important; width: 100% !important;" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 rounded corro" src="img30.jpg" style="height: 80vh !important; width: 100% !important;" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 rounded corro" src="img31.jpg" style="height: 80vh !important; width: 100% !important;" alt="Second slide">
                
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 rounded corro" src="img16.jpg" style="height: 80vh !important; width: 100% !important;" alt="Third slide">
                
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 rounded corro" src="img48.jpg" style="height: 80vh !important; width: 100% !important;"  alt="Third slide">
                
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 rounded corro" src="img41.jpg" style="height: 80vh !important; width: 100% !important;" alt="Third slide">
                
              </div>
              <div class="carousel-item">
                <img class="d-block w-100 rounded corro" src="img37.jpg" height="500vh" style="height: 80vh !important; width: 100% !important;" alt="Third slide">
                
              </div>
            </div>
            <a class="carousel-control-prev " href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="text-dark" style="font-size:50px;" aria-hidden="true">&lt</span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next " href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="text-dark" style="font-size:50px;" aria-hidden="true">&gt</span>
              <span class="sr-only">Next</span>
            </a>
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