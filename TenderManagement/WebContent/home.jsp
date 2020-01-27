<!DOCTYPE html>
<html>
<head>

    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Home Page</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='stylesheets/main.css'>
    <!--<link rel='stylesheet' type='text/css' media='screen' href='stylesheets/layout.css'>-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <script src='main.js'></script>

    <style>
    
        ul{
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        .carousel-inner img {
            width: 100%;
            height: 100%;
        }

        .footer {
      background: #152F4F;
      color: white;

      .links {
        ul {
          list-style-type: none;
        }

        li a {
          color: white;
          transition: color .2s;

          &:hover {
            text-decoration: none;
            color: #4180CB;
          }
        }
      }

      .location {
        i {
          font-size: 18px;
        }
      }

      .copyright p {
        border-top: 1px solid rgba(255, 255, 255, .1);
      }
    }

    </style>

</head>
<body>
  <header>
    <h1 class="text-primary" style="margin-left: 1rem;">Tender Box</h1>
</header>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="home"><i class="fa fa-home"></i>&nbsp&nbsp&nbsp Tenders</a>
    <div class="collapse navbar-collapse" id="navbarColor01">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="aboutus">About Us <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login">Login</a>
          </li>
        </ul>
    </div>      
</nav>

   <!-- <div class="container mt-3">

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
        
          <!-- Indicators -->
         <!-- <ul class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ul>
          
          <!-- The slideshow -->
        <!--  <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="img/tender1.jpg">
            </div>
            <div class="carousel-item">
              <img src="img/tender2.jpg" >
            </div>
            <div class="carousel-item">
              <img src="img/tender3.jpg" >
            </div>
            <div class="carousel-item">
              <img src="img/tender4.jpg" >
            </div>
            <div class="carousel-item">
              <img src="img/tender5.jpg" >
            </div>
            <div class="carousel-item">
              <img src="img/tender6.jpg" >
            </div>
          </div>
          
          <!-- Left and right controls -->
        <!--  <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#myCarousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
        </div>
        
        </div>-->

        <section>
          <div class="row">
          <div class="card bg-light mb-3 stretched-link" style="max-width: 15rem;margin-left: 50px;">
              <div class="card-body" style="text-align: center;">
                  <i class="fa fa-user-hard-hat" style="font-size: 30px;"></i>
                <h5>Civil Works </h5>
                <p>Design, supply, construction, installation, testing and commissioning of sewage treatment plant (33.90 mld) based on open technology with mcc panel room, dg set and all contingent civil, electrical, mechanical, piping and instrumentation works of with three months trial run and post completion operation & maintenance of entire system for 5 years including three years defect liability period.</p>
      
              </div>
          </div>
          <div class="card bg-light mb-3" style="max-width: 15rem;margin-left: 50px;">
              <div class="card-body" style="text-align: center;">
                  <i class="fa fa-industry" style="font-size: 30px;"></i>
                  <h5>Industrial Development Agencies</h5>
                <p>Construction of tunnels, bridges and formation works from chainage 91 plus 228 to 101 plus 339 under package-7b in connection with new bg line between rishikesh and karanprayag in state of uttarakhand, india
                  Earthwork in formation.
                  </p>
      
              </div>
          </div>
          <div class="card bg-light mb-3" style="max-width: 15rem;margin-left: 50px;">
              <div class="card-body" style="text-align: center;">
                  <i class="fa fa-train" style="font-size: 30px;"></i>
                <h5>Railways Transport Services</h5>
                <p>Construction of i) 8.124 km elevated viaducts and 8 stations from ch. 17343.443m to 25467.443m, ii) 5.420 km elevated viaducts and 3 stations from gnlu to gift city and iii) 0.815 km elevated viaducts and additional platform at koteshwar road station for metro rail.</p>
              </div>
          </div>
          <div class="card bg-light mb-3" style="max-width: 15rem;margin-left: 50px;">
              <div class="card-body" style="text-align: center;">
                  <i class="fa fa-road" style="font-size: 30px;"></i>
                <h5>Roads</h5>
                <p>6-laning of nh-71 from renigunta design km 0.000 existing km 124.600 of nh-71 to naidupeta end on nh-16 design km 57.046 existing km 183.400 of nh-71 design length 57.046 km on ham in the state of andhra pradesh under bmp.</p>
      
              </div>
          </div>
          <div class="card bg-light mb-3" style="max-width: 15rem;margin-left: 50px;">
            <div class="card-body" style="text-align: center;">
                <i class="fa fa-water" style="font-size: 30px;"></i>
                <i class="fa fa-water"></i>
              <h5>Water Purification</h5>
              <p>Rfq for development of marathwada water supply grid along with associated infrastructure for the districts of aurangabad and jalna (package-1) on hybrid annuity mode of public private partnership (ppp) </p>
    
            </div>
        </div>
          
          </div>
      </section>
      <div class="footer fixed-bottom " >

          <div class="row">
            
            
            <div class="col-lg-4 col-xs-12 location">
              <h4 class="mt-lg-0 mt-sm-4">Location</h4>
              <p>Pune, Maharashtra</p>
              <p class="mb-0"><i class="fa fa-phone mr-3"></i>(631) 432-8734</p>
              <p><i class="fa fa-envelope-o mr-3"></i>tender@gov.com</p>
            </div>
          </div>
          <div class="row mt-5">
            <div class="col copyright">
              <p class=""><small class="text-white-50">© 2020. All Rights Reserved.</small></p>
            </div>
          </div>
        </div>



</body>
</html>
