
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  HttpSession user=request.getSession();
  String mail=user.getAttribute("email").toString();
  System.out.println("mail: " + mail);
            
  Statement st=con.createStatement();
 String key=request.getParameter("ukey");
  
  ResultSet rs=st.executeQuery("select * from register where email='"+mail+"' AND ukey='"+key+"'");
  if(rs.next()){
      response.sendRedirect("file_upload.jsp?msg=Key_verified");
         }
   else{
      response.sendRedirect("ukey_page.jsp?msg=Incorrect_Key");
    
   }
    
%>