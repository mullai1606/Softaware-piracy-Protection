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
        <script>alert('Product Uploaded');</script>
        <%}
            if (request.getParameter("msg1") != null) {%>
        <script>alert('username/password wrong');</script> 
        
        <%}
        %> 
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a>Software Piracy Prevention</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="adminhome.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="admin_products.jsp"><span>Add Softwares</span></a></li>
          <li><a href="admin_purchased.jsp"><span>Purchased Softwares</span></a></li>
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
	<h2>Upload Software</h2>
    <br><br>
    
            
           <form name="f" action="admin_products1.jsp" method="post" >  <center>
<table>
   
        <tr>
            <th><font color="black" size="4">Software Name :</th>
              <th><input type="text" name="pname"  placeholder= "Product Name" style="height:30px; width:170px"></input>
              </th>
        </tr>

        <tr>
              <th><font color="black" size="4">Quantity: </th>
              <th><input type="text" name="pquantity"  placeholder= "Quantity" style="height:30px; width:170px"></input>
              </th>
        </tr>
    
      <tr>
              <th><font color="black" size="4">Description: </th>
              <th><input type="text" name="pdes"  placeholder= "Description" style="height:30px; width:170px"></input>
              </th>
        </tr>
    
    
         <tr>
              <th><font color="black" size="4">Price :</th>
              <th><input type="text" name="pprice"  placeholder= "Price" style="height:30px; width:170px"></input>
              </th>
        </tr>
    
    
       <tr>
              <th><font color="black" size="4">Image :</th>
              <th><input type="file" name="image"  placeholder= "Image" style="height:30px; width:170px"></input>
              </th>
        </tr>
    
	  <tr>
              <td>
                    <input type="submit" value="Upload"  style="height:30px; width:65px" />
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
