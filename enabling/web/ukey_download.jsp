<%@page import="java.sql.ResultSet"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.OutputStream"%>
<%
            try {
 HttpSession user=request.getSession();
 String mail=user.getAttribute("email").toString();
 String fname = "Upload Key", data = null;
            Connection con = Dbconn.getConnection();
            Statement st = con.createStatement();
            ResultSet rt = st.executeQuery("select * from register where email='"+mail+"'");
            if (rt.next()) {
                data = rt.getString("ukey");
   String key="Time Stamp Upload Key:" +data+ "/n Validity Upload key:One Time Use";
      
       byte a[] = key.getBytes();
        response.setContentType("text/plain");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fname + "\"");
        OutputStream os = response.getOutputStream();
        os.write(a);
        os.close();
        a = null;
        if (a == null) {
        }
    }
            }            catch (Exception ex) {
        ex.printStackTrace();
    }
%>