<%@page import="FileDownload.download"%>
<%@page import="EncryptionDecryption.TrippleDes"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
<%
    try {
        Blob blob = null;
        String str = null;
        String dec = null;
        HttpSession timekey=request.getSession();
        String mail=timekey.getAttribute("email").toString();
        String fname=timekey.getAttribute("f_name").toString();
        String time=timekey.getAttribute("t_key").toString();
        System.out.println("key:"+time);
          
        String tkey = request.getParameter("tkey");
         System.out.println("tkey:"+tkey);
       
        Connection con1 = new Dbconn().getConnection();
        Statement st1 = con1.createStatement();
        
        ResultSet rs1 = st1.executeQuery("select * from upload where  file_name='" + fname + "'  and file_owner='" + mail + "' ");
                   
        if (rs1.next()) {
            if(time.equalsIgnoreCase(tkey)){
            //blob = rs1.getBlob("file");
            str = rs1.getString("data");
            if(time.equalsIgnoreCase(tkey)){
            System.out.println("DB string is " + str);
            dec = new TrippleDes().decrypt(str);
            System.out.println("dec text is : " + dec);
            }
        }
                   }             
        if (dec != null) {
            download.updator(fname, mail);
            String filename = fname;
            // byte a[] = blob.getBytes(1, (int) str.length());
            byte a[] = dec.getBytes();
            response.setContentType("text/plain");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
            OutputStream os = response.getOutputStream();
            os.write(a);
            os.close();
            a = null;
        } else {
            System.out.println("error here");
            System.out.println("userId " +mail );
            System.out.println("filenm " + fname);
            response.sendRedirect("timekey_page.jsp?error");
        }
    } catch (SQLException ex) {
        response.sendRedirect("timekey_page.jsp?Enter Correct Time Stamp File Key");
        ex.printStackTrace();
    }
%>