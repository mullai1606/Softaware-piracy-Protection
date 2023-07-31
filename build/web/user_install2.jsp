
<%@page import="java.util.Random"%>
<%@page import="software.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="software.Dbconnection"%>
<%@ page session="true" %>
<%
    String user = session.getAttribute("name").toString();
    String dip = session.getAttribute("ip").toString();
    String id = request.getParameter("id");
    String pname = request.getParameter("pname");
    String pdes = request.getParameter("pdes");
    String key = request.getParameter("key");
    String ip = request.getParameter("ip");
    
    
    
    
    
    try{
       
       Connection con = null; 
       con = Dbconnection.getConnection();

      
       Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("select * from purchase where id="+id+" and user='"+user+"'");
                 
         String dkey=null;
                
                    if ( rs.next() )
                    {
                     
                 dkey = rs.getString(7);
                  
                  
                    } 
        
        if(dip.equals(ip)&& key.equals(dkey)){
    
     
               
     response.sendRedirect("user_install.jsp?msg=success");
 

        }
        else{
            
     
        response.sendRedirect("user_install.jsp?msg1=Failed");
        
        } 
       
     
      
      
  }
    catch(Exception e)
    {
        response.sendRedirect("user_install.jsp?msg1=Failed");  
        
        
        
    }
%>

