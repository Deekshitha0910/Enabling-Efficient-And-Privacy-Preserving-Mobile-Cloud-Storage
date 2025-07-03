<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
				<li><a href="user_page.jsp">Client Home</a></li>
                                <li ><a href="ukey_page.jsp">File Upload</a></li>
                                <li class="active"><a href="user_key.jsp">Upload Secret Key </a></li>	
				<li><a href="file_view.jsp">File View</a></li>	
				<li ><a href="user_login.jsp">Log Out</a></li>		
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

	<section id="subscribe" class="section-style" data-background-image="images/background/down1.jpg">
		<div class="pattern height-resize">
			<div class="container">
                          	<h3 class="section-name" >
					<span>
						Upload Secret Key
					</span>
                                </h3>
                                <%
                                HttpSession user=request.getSession();
            String mail=user.getAttribute("email").toString();
             try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from register where email='"+mail+"'");
                                        while (rs.next()) {
                                            String name=rs.getString("name");
                                            String dob=rs.getString("dob");
                                            String loc=rs.getString("loc");
                                            String contact=rs.getString("contact");
                                        
            
                                %>
                  <form class="news-letter" action="ukey_request.jsp" method="post" enctype="multipart/form-data">
						<div class="subscribe-hide">
						<h3> Name </h3>
                                                <input class="form-control" type="text"  name="name" value="<%=name%>" style="color:darkblue" readonly required>
				        </div>
                      <div class="subscribe-hide">
						<h3> E-Mail </h3>
                                                <input class="form-control" type="email"  name="email" value="<%=mail%>" style="color:darkblue" readonly    required>
				        </div>
                      <div class="subscribe-hide">
						<h3> Date Of Birth </h3>
				<input class="form-control" type="text"  name="dob" value="<%=dob%>" style="color:darkblue" readonly required>
				        </div>
                      <div class="subscribe-hide">
						<h3> Location </h3>
				<input class="form-control" type="text"   name="loc" value="<%=loc%>" style="color:darkblue" readonly  required>
				        </div>
                      
                      <div class="subscribe-hide">
						<h3> Contact </h3>
				<input class="form-control" type="text"  name="con" value="<%=contact%>" style="color:darkblue" readonly  required>
				        </div>
                                        <br>
				<center>   <input type="submit" value="Download"  style=" border-radius: 8px; height: 60px;width: 200px; color:white;background-color:black " class=""  />
                          
                                    
                        </center>
                     
				</form> 
                                <%
                                   }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
            %>
                              <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
