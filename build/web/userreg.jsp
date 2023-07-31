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
        <script>alert('File Details Sent Successfully');</script>
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
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="admin.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="user.jsp"><span>User</span></a></li>
        </ul>
      </div>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div ><img src="images/aa.jpg" width="960" height="360" alt="" /><span><br />
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
	<h2>User Registration</h2>
    <br><br>
          
           <hr>
           <form name="f" action="userregact.jsp" method="post" >  <center>
<table>
   
        <tr>
            <th><font color="black" size="4">Username :</th>
              <th><input type="text" name="username"  placeholder= Username style="height:30px; width:170px"></input>
              </th>
        </tr>

        <tr>
              <th><font color="black" size="4">Password: </th>
              <th><input type="password" name="password1"  placeholder= Password style="height:30px; width:170px"></input>
              </th>
        </tr>
    
    
      <tr>  
               <th><font color="black" size="4">Gender: </th>
               <th><select id="s1" name="gen" required style="width: 175px;" class="text">
                <option value="">--Select--</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
             </select></th>
         
          </tr>
    
    
       <tr>
              <th><font color="black" size="4">Date of Birth :</th>
              <th><input type="date" name="dt"  placeholder= DOB style="height:30px; width:170px"></input>
              </th>
        </tr>
    
      
         <tr>
              <th><font color="black" size="4">Mobile No :</th>
              <th><input type="text" name="mobile"  placeholder= MobileNo style="height:30px; width:170px"></input>
              </th>
        </tr>
   
       <tr>
              <th><font color="black" size="4">Email :</th>
              <th><input type="text" name="email"  placeholder= Email style="height:30px; width:170px"></input>
              </th>
        </tr>
    
       <tr>
              <th><font color="black" size="4">Address :</th>
              <th><input type="text" name="address"  placeholder= Address style="height:30px; width:170px"></input>
              </th>
        </tr>
    
	  <tr>
              <td>
                    <input type="submit" value="Register"  style="height:30px; width:65px" />
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
