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
       <<ul>
          <li><a href="userhome.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="user_viewproducts.jsp"><span>View Softwares</span></a></li>
          <li><a href="user_install.jsp"><span>Install Software</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"><img src="images/aa.jpg" width="960" height="360" alt="" /><span><br />
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
        int j=0;    
            
int id=Integer.parseInt(request.getParameter("id"));
String pname = request.getParameter("pname");
String pquantity = request.getParameter("pquantity");
String pdes = request.getParameter("pdes");
int i=Integer.parseInt(request.getParameter("pprice"));
int k=Integer.parseInt(request.getParameter("quan"));
j= i*k;



	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from products");
        ResultSet rs=pst.executeQuery();
        %>
        
  
   <center>
	<h2  style="color: #0b6c81">Purchase Product</h2>
    
           <form name="f" action="user_viewproducts3.jsp" method="post" >  <center>
<table>
   
        <tr>
            <th><font color="black" size="4">Product Id :</th>
              <th><input type="text" name="id" value="<%=id%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>

        <tr>
              <th><font color="black" size="4">Product Name: </th>
              <th><input type="text" name="pname" value="<%=pname%>"  style="height:30px; width:170px"></input>
              </th>
        </tr>
    
    
    
      <tr>
              <th><font color="black" size="4">Product Description :</th>
              <th><textarea type="text" name="pdes" value="<%=pdes%>" style="height:30px; width:170px"><%=pdes%></textarea></input>
              </th>
        </tr>
             
              <tr>
              <th><font color="black" size="4">Quantity :</th>
              <th><input type="text" name="quan" value="<%=k%>" style="height:30px; width:170px"></input>
              </th>
        </tr>  
              
            <tr>
              <th><font color="black" size="4">Total Cost :</th>
              <th><input type="text" name="total" value="<%=j%>" style="height:30px; width:170px"></input>
              </th>
        </tr>
   
       <tr>
              <th><font color="black" size="4">Card Number :</th>
              <th><input type="text" name="cno"  placeholder= CardNumber style="height:30px; width:170px"></input>
              </th>
        </tr>
    
       <tr>
              <th><font color="black" size="4">CVV :</th>
              <th><input type="text" name="ccv" placeholder= CVV style="height:30px; width:170px"></input>
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
