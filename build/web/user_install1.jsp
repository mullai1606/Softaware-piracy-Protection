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
    
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Software Piracy Prevention</a></h1>
      </div>
        
      <div class="clr"></div>
      <div class="menu_nav">
       <ul>
          <li class="active"><a href="userhome.jsp"><span>Home Page</span></a></li>
          <li><a href="user_viewproducts.jsp"><span>View Products</span></a></li>
          <li><a href="user_install.jsp"><span>Install Products</span></a></li>
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
              
	<% 

String id = request.getParameter("id");


	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from purchase where id='"+id+"'");
        ResultSet rs=pst.executeQuery();
        
        if(rs.next())
        {
        %>
        
  
   <center>
	<h2  style="color: #0b6c81">Verify Product Key</h2>
  
           <form name="f" action="user_install2.jsp" method="post" >  <center>
<table>
   
        <tr>
            <th><font color="black" size="4">Product Id :</th>
              <th><input type="text" name="id" value="<%=id%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>

              
              
        <tr>
              <th><font color="black" size="4">Product Name: </th>
              <th><input type="text" name="pname" value="<%=rs.getString(2)%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>
    
    
    
       <tr>
              <th><font color="black" size="4">Product Description :</th>
              <th><textarea type="text" name="pdes" value="<%=rs.getString(3)%>" style="height:30px; width:170px"><%=rs.getString(3)%></textarea></input>
              </th>
        </tr>
              
            <tr>
              <th><font color="black" size="4">Product Key :</th>
              <th><input type="text" name="key" Placeholder="Product Key" style="height:30px; width:170px"></input>
              </th>
        </tr>   
    
       <tr>
              <th><font color="black" size="4">IP Address :</th>
              <th><input type="text" name="ip" Placeholder="IP Address" style="height:30px; width:170px"></input>
              </th>
        </tr> 
    
	  <tr>
              <td>
                    <input type="submit" value="submit"  style="height:30px; width:65px" />
             
              </td>
            </tr>
 
             
	</table>
                    </center>
     </form>
  <%}%>
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
