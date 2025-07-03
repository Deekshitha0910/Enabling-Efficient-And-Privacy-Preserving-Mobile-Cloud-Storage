<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>	Enabling_Cloud_Storage </title>
	<meta name="description" content="Kite Coming Soon HTML Template by Jewel Theme" >
	<meta name="author" content="Jewel Theme">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/css/style.css" rel="stylesheet">

	
</head>
<body>
     <script>
                             function validate(){
       
        var pass=document.form1.pass.value;
        var cpass=document.form1.repass.value;
       
        
                             if(pass==0){
            alert("Enter your password");
            document.form1.pass.focus();
            
            return false;
        }
                              if(cpass==0){
            alert("Enter your password cofirmation");
            document.form1.repass.focus();
            
            
            return false;
        }
        if(pass!=cpass){
            alert("Incorrect Confiorm password");
            document.form1.pass.focus();
            
            return false;
        }
                             }
        </script>


	<div id="preloader">
		<div id="loader">
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="lading"></div>
		</div>
	</div><div id="" class="navbar navbar-default navbar-fixed-top" role="navigation">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<i class="fa fa-bars"></i>
			</button> 
		</div> 
		<nav class="collapse navbar-collapse">
			<ul id="headernavigation" class="nav navbar-nav">
				<li ><a href="index.html">Home</a></li>
                                <li><a href="user_login.jsp">Client</a></li>	
			        <li><a href="admin_login.jsp">TPA</a></li>	
				<li><a href="cloud_login.jsp">Cloud</a></li>	
				<li class="active"><a href="register.jsp">Registration</a></li>		
			</ul> 
                </nav> 
        </div>
<section id="page-top" class="section-style" data-background-image="images/background/page-top.jpg">
		<div class="pattern height-resize">
			<div class="container">
				<h1 class="site-title">
					Cloud
				</h1>
                            <div class="text" style="margin-left:x">
                            <h5 class="site-title">
					Enabling efficient secure and privacy preserving mobile cloud storage
				</h5>
                         
                            </center>
				</div>
                        </div>
                </div>		
	</section>

	<section id="subscribe" class="section-style" data-background-image="images/background/register.jpg">
		<div class="pattern height-resize">
			<div class="container">
				<h3 class="section-name" >
					<span>
						Registration
					</span>
				</h3>
				<form class="news-letter" name="form1" action="register" onsubmit="return validate();" method="get">
					
					<div class="subscribe-hide" >
                                        <input class="form-control" type="text" id="subscribe-email" name="name" placeholder="Name" required>
			                <input class="form-control" type="email" id="subscribe-email" name="email" placeholder="Email Address"  required>
                                        <input class="form-control" type="password" id="subscribe-email" name="pass" placeholder="Password"  required>
                                        <input class="form-control" type="password" id="subscribe-email" name="repass" placeholder="Re-Enter Password "  required>
                                        <input class="form-control" type="date" id="subscribe-email" name="dob" placeholder="Date Of Birth"  required>
                                        <select  name="gender" class="form-control" required="required">
                                        <option value="na" selected="" style="color:darkblue">Choose One:</option>
                                        <option value="male" style="color:darkblue">Male</option>
                                        <option value="female"style="color:darkblue">Female</option>
                                        </select>
                       
                                        <input class="form-control" type="text" id="subscribe-email" name="con" placeholder="Contact Number"  required>
                                        <input class="form-control" type="text" id="subscribe-email" name="location" placeholder="Location"  required>
                                        <br>
                                        
                                              <center>   <input type="submit" value="Register"  style=" border-radius: 8px; height: 45px;width: 115px; color:white;background-color:black " class=""  />
                            <input type="reset" value="Reset"  style=" border-radius: 8px; height: 45px;width: 115px; color:white;background-color:black " class="" /><br />
                       
                        </center>
                     
                                                  </div>
                                </form>
                            <br>
                                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                                        
				</div>
                </div>
		</section>	
	

		<script type="text/javascript" src="assets/js/jquery-2.1.0.min.js"></script>
		<script type="text/javascript" src="assets/js/modernizr-2.8.0.min.js"></script>
		<script type="text/javascript" src="assets/js/plugins.js"></script>
		<script type="text/javascript" src="assets/js/functions.js"></script>
		<script type="text/javascript" src="assets/js/jquery.ajaxchimp.min.js"></script>

	</body>
	</html>
