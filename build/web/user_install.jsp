<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="software.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Software Piracy Prevention</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
   <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Software Installed Successfully');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Key not Matched');</script> 
        <%}
            if (request.getParameter("msg2") != null) {%>
        <script>alert('Incorrect card Number');</script> 
        
        <%}
        %>     
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Software Piracy Prevention</a></h1>
      </div>
        
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="userhome.jsp"><span>Home Page</span></a></li>
          <li><a href="user_viewproducts.jsp"><span>View Softwares</span></a></li>
          <li class="active"><a href="user_install.jsp"><span>Install Software</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div><img src="images/aa.jpg" width="960" height="360" alt="" /><span><br />
       <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="clr"></div>
          <div class="post_content">
          <center>
               <h2>Purchased Softwares</h2>
	<% 
            
       String name = session.getAttribute("name").toString();     

try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from purchase where user='"+name+"'");
        ResultSet rs=pst.executeQuery();
        
        
        String id=null;
        String image=null;
       
       
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr style="color: red">
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Install</th>
     
 </tr>
<body  bgcolor="">;
<%
       
	while(rs.next()){
            %><tr style="color: black">
                <td><%=rs.getString(1)%></td>
                <th><%=rs.getString(2)%></th>
                <td><textarea><%=rs.getString(3)%></textarea></td>
                <td><a href="user_install1.jsp?id=<%=rs.getString(1)%>"><font color="#0d637d" size="3">Click_Here</font></a> </td>
      
            
        </tr>
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
         <hr>   
    </div>
          <div class="clr"></div>
        </div>
     </div>
      
      <div class="clr"></div>
    </div>
  </div>
  
  
</div>
</body>
</html>
