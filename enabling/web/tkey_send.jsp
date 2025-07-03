
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
  
  int i=st.executeUpdate("update upload set tkey='Yes' where file_owner='"+mail+"' AND file_name='"+fname+"'");
  if(i!=0){
  response.sendRedirect("file_timekey.jsp?msg=File_time_key_Send_to_User");
  }
    
   else{
      System.out.println("error");
   }
    
%>