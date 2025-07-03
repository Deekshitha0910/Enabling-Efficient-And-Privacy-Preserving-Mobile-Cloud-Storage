
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String mail=request.getQueryString();

Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
 
  
  ResultSet rs=st.executeQuery("select * from register where email='"+mail+"'");
  if(rs.next()){
  int i=st.executeUpdate("update register set status='yes' where email='"+mail+"'");
  if(i!=0){
  response.sendRedirect("user_details.jsp?msg=activated");
  }
    
   else{
      System.out.println("error");
   }}
    
%>