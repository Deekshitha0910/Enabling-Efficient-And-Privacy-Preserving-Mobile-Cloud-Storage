
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 String [] array = request.getQueryString().split(",");
    String fname = array[0];
    String mail = array[1];
  
  int i=st.executeUpdate("update upload set status='Yes' where file_owner='"+mail+"' AND file_name='"+fname+"'");
  if(i!=0){
  response.sendRedirect("file_send.jsp?msg=File_Send_to_TPA_to_Audit");
  }
    
   else{
      System.out.println("error");
   }
    
%>