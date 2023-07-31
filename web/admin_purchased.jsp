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
        <script>alert('Product Purchased Successfully');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('Products Out of Stock');</script> 
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
          <li><a href="adminhome.jsp"><span>Home Page</span></a></li>
          <li><a href="admin_products.jsp"><span>Add Softwares</span></a></li>
          <li class="active"><a href="admin_purchased.jsp"><span>Purchased Softwares</span></a></li>
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
               <h2>User Purchased Softwares</h2>
	<% 

try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from purchase");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr style="color: red">
        <th>Product ID</th>    
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Product Quantity</th>
        <th>Total Price</th>
        <th>User Name</th>
       
 </tr>
<body  bgcolor="">;
<%
       
	while(rs.next()){
            %><tr style="color: black">
                <td><%=rs.getString(1)%></td>
                <th><%=rs.getString(2)%></th>
                <td><%=rs.getString(3)%></td>
                <th><%=rs.getString(4)%></th>
                <th><%=rs.getString(5)%></th>
                <th><%=rs.getString(6)%></th>
            
            
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
