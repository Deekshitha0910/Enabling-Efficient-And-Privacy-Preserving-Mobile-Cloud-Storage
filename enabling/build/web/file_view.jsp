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
                                <li><a href="user_key.jsp">Upload Secret Key </a></li>	
                                <li class="active"><a href="file_view.jsp">File View</a></li>	
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

	<section id="subscribe" class="section-style" data-background-image="images/background/fileview.jpg">
		<div class="pattern height-resize">
			<div class="container">
                           	<h3 class="section-name" >
					<span>
						File View
					</span>
                                </h3>
                            <br>
                            <br>
                            <br>
                            <br>
                              
                              <center>
                   <table border="1" width="700px" hieght="1200px" style="text-align: center;background-color:#ff99ff">
                   
                       <tr style="color:black;">
                               
                                <th>File Name</th>
                                <th>File Owner</th>
                                <th>Uploaded On</th>
                                <th>Size</th>
                                <th>TPA Status</th>
                                <th>Download</th>
                         </tr>
                         <tr>
                                <%
                                    try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from upload ");
                                        while (rs.next()) {
                                            String mail=rs.getString("file_owner");
                                            
            %>
                                <td><%=rs.getString("file_name")%></td>
                              
                                <td><%=rs.getString("file_owner")%></td>
                                <td><%=rs.getString("date")%></td>
                                <td><%=rs.getString("size")%></td>
                                <td><%=rs.getString("tkey")%></td>
                                 
                                 <td><a href="tkey_verify.jsp?<%=rs.getString("file_name")%>" >Download</a> </td>
                               </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table>
               </center>
            
                              <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
