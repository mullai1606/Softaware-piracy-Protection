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
        ResultSet rs = st.executeQuery("select * from user where username='"+username+"' and password1='"+password+"'");
       if(rs.next())
        {
         String  user = rs.getString(7);
         String  name = rs.getString(2);
         String  ip = rs.getString(9);
        	   session.setAttribute("user",user);
                   session.setAttribute("name",name);
                   session.setAttribute("ip",ip);
                 
		   System.out.println("User:"+user);
		   response.sendRedirect("userhome.jsp?msg=login success");
        }
       else 
        {
            response.sendRedirect("user.jsp?msg1=username/password wrong");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in user"+e.getMessage());
    }
%>



