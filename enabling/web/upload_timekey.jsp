<%@page import="EncryptionDecryption.TrippleDes"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Random"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import ="java.text.SimpleDateFormat"%>
<%@page import ="java.util.Calendar"%>
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
				<li class="active"><a href="admin_page.jsp">TPA Home</a></li>
                                <li ><a href="upload_timekey.jsp">Time Stamp Upload secret key</a></li>	
			        <li><a href="file_timekey.jsp">Time Stamp File secret key </a></li>	
                              <li ><a href="admin_login.jsp">Log Out</a></li>		
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

	<section id="subscribe" class="section-style" data-background-image="images/background/uhome.jpg">
		<div class="pattern height-resize">
			<div class="container">
                            <br><br><br><br><br><br>
				<h3 class="section-name" >
					<span>
						Time Stamp Upload Key
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
                                <th>Time Stamp Upload Key</th>
                                </tr>
                         <tr>
                                <%
                                    try {
                                        Connection con;
                                        Statement st;
                                        ResultSet rs,rs1,rs2;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from register where status='Yes'");
                                        if (rs.next()) {
                                            String mail=rs.getString("email");
                                            int r=Integer.parseInt(rs.getString("ukey"));
                                         
                                  Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HHmmss");
        String s1=sdf.format(cal.getTime());
        System.out.println( sdf.format(cal.getTime()) );
                                     Random s = new Random();
                                          int a1=Integer.parseInt(s1);
    int a = s.nextInt(a1)+r-9000;
    System.out.print(a);
    String key = String.valueOf(a);
    String dkey=new TrippleDes().encrypt(key);
    HttpSession user=request.getSession();
            String mail1=user.getAttribute("email").toString();
            System.out.println("mail: " + mail);
            
   // int i=st.executeUpdate("update register set ukey='"+key+"', dkey='"+dkey+"' where email='"+mail+"' ");
 // if(i!=0){
       rs1 = st.executeQuery("select * from register where user='Yes' ");
       if(rs1.next()){
         int i=st.executeUpdate("update register set ukey='"+key+"', dkey='"+dkey+"' where email='"+mail1+"' ");
  if(i!=0){  
       response.sendRedirect("udecrypt_key.jsp"); 
       } }
             else {
      response.sendRedirect("upload_key.jsp"); 
        
  
            }    
  
                             }          } catch (Exception ex) {
                                                                        ex.printStackTrace();
                                }
                            %>
                        </table>
               </center>
               
                              <br><br><br><br><br><br><br><br><br><br><br><br><br>
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
