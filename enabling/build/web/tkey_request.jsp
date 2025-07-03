
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 
  
  int i=st.executeUpdate("update register set user='No' ");
  if(i!=0){
  response.sendRedirect("upload_timekey.jsp");
  }
    
   else{
      System.out.println("error");
   }
    
%>