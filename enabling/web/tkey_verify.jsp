 <%@page import="Mail.MailSender"%>
<%@page import="EncryptionDecryption.TrippleDes"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Connection"%>
<%
                    String fname = request.getQueryString();
                     HttpSession session1=request.getSession();
            String mail=session1.getAttribute("email").toString();
            System.out.println("mail: " + mail);
           
                    Connection con=Dbconn.getConnection();
    
  System.out.println("Database connected");
  
  Statement st=con.createStatement();
  Statement st2=con.createStatement();
 
  Statement st1=con.createStatement();
 
  ResultSet rs2=st2.executeQuery("select * from upload  where  file_name='"+fname+"' AND file_owner='"+mail+"' AND tkey= 'Yes' ");
 if(rs2.next()){
  
  int i=st.executeUpdate("insert into timeupdate(file_name,file_owner) values('"+fname+"','"+mail+"')");
  if(i!=0){
    ResultSet rs=st.executeQuery("select * from timeupdate where file_owner='"+mail+"' AND file_name='"+fname+"' ORDER BY time DESC   ");
       if(rs.next()){
           String time=rs.getString("time");
           String tkey=new TrippleDes().encrypt(time);
            HttpSession timekey = request.getSession(true);
             timekey.setAttribute("t_key", tkey);
             timekey.setAttribute("email", mail);
             timekey.setAttribute("f_name", fname);
   
           String msg = "File Name:" +fname+ "\n\nFile Time Stamp Key:" +tkey+ "\n\nKey Validity:Change according to Time Stamp ";
  
             new MailSender().sendMail(mail, "File Time Stamp Key", msg);
           response.sendRedirect("timekey_page.jsp");
   
         
      
              }
       }
   else{
      System.out.println("error");
   }
  }
    else {
      response.sendRedirect("file_view.jsp?msg=Get_request_from_TPA_to_Download");
             }

%>
              