
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
 <meta charset='utf-8'>
 <meta http-equiv='X-UA-Compatible' content='IE=edge'>
 <title>Home</title>
 <meta name='viewport' content='width=device-width, initial-scale=1'>
  <link rel='stylesheet' type='text/css' media='screen' href='stylesheets/main.css'>
<!-- <link rel='stylesheet' type='text/css' media='screen' href='stylesheets/layout.css'>-->
  <link  rel="stylesheet" href="<c:url value='/resources/stylesheets/main.css'/>">
 <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css"/>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="<c:url value='/resources/scripts/main.js'/>"></script>
 <link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css"/>
<style>
.column {
  float: left;
  width: 25%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}
.container {
  padding: 0 16px;
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
             <a class="nav-link" href="#">About Us <span class="sr-only">(current)</span></a>
           </li>
           <li class="nav-item">
             <a class="nav-link" href="login">Login</a>
           </li>
         </ul>
     </div>      
 </nav>

 <div class="row">
   <div class="column">
     <div class="card">
       <img src="img/boy.jpg" alt="Jane" style="width:100%">
       <div class="container">
         <h2>Abhishek Gandhi</h2>
         <p class="title">Developer</p>
         
         <p>gandhiabhishek89@gmail.com</p>
         <p><button class="button">Contact</button></p>
       </div>
     </div>
   </div>
 
   <div class="column">
     <div class="card">
       <img src="img/boy.jpg" alt="Mike" style="width:100%">
       <div class="container">
         <h2>Ashish Yadav</h2>
         <p class="title">Developer</p>
       
         <p>ashi24.ashish@gmail.com</p>
         <p><button class="button">Contact</button></p>
       </div>
     </div>
   </div>
   
   <div class="column">
     <div class="card">
       <img src="img/boy.jpg" alt="John" style="width:100%">
       <div class="container">
         <h2>Prithviraj Randive</h2>
         <p class="title">Developer</p>
         
         <p>pprandive9422@gmail.com</p>
         <p><button class="button">Contact</button></p>
       </div>
     </div>
   </div>
 
 
 <div class="column">
     <div class="card">
       <img src="img/boy.jpg" alt="Johnny" style="width:100%">
       <div class="container">
         <h2>Siddharth Kamble</h2>
         <p class="title">Developer</p>
         
         <p>siddkamble2424@gmail.com</p>
         <p><button class="button">Contact</button></p>
       </div>
     </div>
   </div>
 </div>
 </div>

</body>
</html>