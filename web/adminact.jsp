 <%@page import="java.sql.*"%>
<%@page import="software.Dbconnection"%>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    String password = request.getParameter("password");
    System.out.println(password);
    try{
       
      
	Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from admin where user='"+username+"' and pwd='"+password+"'");
       if(rs.next())
        {
          response.sendRedirect("adminhome.jsp?msg=login success");
        }
       else 
        {
            response.sendRedirect("admin.jsp?msg1=username/password wrong");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in adminlogact"+e.getMessage());
    }
%>



