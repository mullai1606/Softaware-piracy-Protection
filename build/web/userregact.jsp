<%@page import="software.Mail"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="software.Dbconnection"%>
<%@ page session="true" %>
<%
   
   
   int id=0;
   String macadd = null;
    String username = request.getParameter("username");
    String password1 = request.getParameter("password1");
    String gen = request.getParameter("gen");
    String dt = request.getParameter("dt");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
   
      
      
     Connection con=Dbconnection.getConnection();
     Statement st1 = con.createStatement();
       ResultSet rs1 = st1.executeQuery("select * from user");
       String dbip =null;
                  
                    while ( rs1.next() )
                    {
                     
                  dbip = rs1.getString("ip");
                   
                    } 
    
    String ip=dbip+1;
    
  String ip1=  "6C-62-6D-E9-10-1C";
  
    
    try{
       
       
        Statement st = con.createStatement();
       PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?)");
        ps.setInt(1,id);
        ps.setString(2,username);    
        ps.setString(3,password1);
        ps.setString(4,gen);
        ps.setString(5,dt);
        ps.setString(6,mobile);
        ps.setString(7,email);
        ps.setString(8,address);
        ps.setString(9,ip1);
        ps.executeUpdate();
        

        
    Mail m = new Mail();
          String msg ="User Name:"+username+"\nIP Address :"+ip1;
          m.secretMail(msg,email,email);  
          response.sendRedirect("user.jsp?msg=success");      
        
}
    catch(Exception e)
    {
        System.out.println("Error in user"+e.getMessage());
    }
%>

