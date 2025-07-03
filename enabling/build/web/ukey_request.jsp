
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
HttpSession user=request.getSession();
            String mail=user.getAttribute("email").toString();
            System.out.println("mail: " + mail);
            
Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 
  
  int i=st.executeUpdate("update register set user='Yes' where email='"+mail+"'");
  if(i!=0){
  response.sendRedirect("upload_timekey.jsp");
  }
    
   else{
      System.out.println("error");
   }
    
%>