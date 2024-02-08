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
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
              }
              
              #map {
                height: 100%;
                width: 100%;
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
                    <a class="nav-link active" href="#">&ensp;&ensp;LOCATION MAP&ensp;&ensp;</a>
                    <a class="nav-link active" href="features1.jsp">&ensp;&ensp;HOTEL FEATURES&ensp;&ensp;</a>
                    <a class="nav-link active" href="dining1.jsp">&ensp;&ensp;DINING&ensp;</a>
                    <a class="nav-link active" href="userhome.jsp">&ensp;&ensp;MEETINGS & EVENTS&ensp;&ensp;</a>
                    <a class="nav-link active" href="feedback1.jsp">&ensp;&ensp;RATION&ensp;&ensp;</a>
                    <a class="nav-link active" href="contact1.jsp">&ensp;&ensp;CONTACT US&ensp;&ensp;</a>
                    <!-- <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a> -->
                </div>
            </div>
        </nav>
        <br><br><br>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3828.5519206707254!2d81.59900611465531!3d16.345823588710577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a482a1fa5900a73%3A0x132aa993a9847ff5!2sAnnapurna%20Venue%20-%20Perupalem%20Beach%20Resort!5e0!3m2!1sen!2sin!4v1664812511799!5m2!1sen!2sin" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" id="map"></iframe>
    </body>
</html>