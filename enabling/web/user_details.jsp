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
				<li ><a href="cloud_page.jsp">Cloud Home</a></li>
                                <li class="active"><a href="user_details.jsp">User Details</a></li>	
			        <li><a href="file_send.jsp">File send to TPA</a></li>	
				<li ><a href="cloud_downloads.jsp">Cloud Downloads</a></li>	
				<li ><a href="cloud_login.jsp">Log Out</a></li>		
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

	<section id="subscribe" class="section-style" data-background-image="images/background/udetails.png">
		<div class="pattern height-resize">
			<div class="container">
				<h3 class="section-name" >
					<span>
						User Details
					</span>
                                </h3>
                            <br>
                            <br>
               <center>
                   <table border="1" width="700px" hieght="1200px" style="text-align: center;background-color:#ff99ff">
                   
                       <tr style="color:black;">
                          <th>Name</th>
                               
                                <th>Email</th>
                                <th>Birth Day </th>
                                <th>Gender</th>
                                <th>Location</th>
                                <th>Status</th>
                                <th>Activate</th>
                         </tr>
                         <tr>
                                <%
                                    try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from register");
                                        while (rs.next()) {
                                            String mail=rs.getString("email");
                                            
            %>
                                <td><%=rs.getString("name")%></td>
                              
                                <td><%=rs.getString("email")%></td>
                                <td><%=rs.getString("dob")%></td>
                                <td><%=rs.getString("gender")%></td>
                                <td><%=rs.getString("loc")%></td>
                                 <td><%=rs.getString("status")%></td>
                                
                                 <td><a href="uactivate.jsp?<%=mail%>" >Activate</a> </td>
                               </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table>
               </center>
                            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
