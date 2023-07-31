
<%@page import="java.util.Random"%>
<%@page import="software.Mail"%>
<%@page import="java.sql.*"%>
<%@page import="software.Dbconnection"%>
<%@ page session="true" %>
<%
    String user = session.getAttribute("name").toString();
       String email = session.getAttribute("user").toString();
    int id=Integer.parseInt(request.getParameter("id"));
    String pname = request.getParameter("pname");
    String pdes = request.getParameter("pdes");
    int quan=Integer.parseInt(request.getParameter("quan"));
    int total=Integer.parseInt(request.getParameter("total"));
    String cno = request.getParameter("cno");
    String ccv = request.getParameter("ccv");
    
    Random s = new Random();
    int a = s.nextInt(10000 - 5000) +25000 ;
    System.out.print(a);
    
    
    
    
    try{
       
       Connection con = null; 
       con = Dbconnection.getConnection();

      
       
    
       
       Statement st = con.createStatement();
       ResultSet rs = st.executeQuery("select * from products where id="+id+"");
                  int i =0;
                
                    if ( rs.next() )
                    {
                     
                  i = rs.getInt("pquantity");
                  
                  
                    } 
        
        if(quan<=i){
        // if(total<=cardmoney){
     
       PreparedStatement ps = con.prepareStatement("insert into purchase values(?,?,?,?,?,?,?)");
        ps.setInt(1,id);
        ps.setString(2,pname); 
        ps.setString(3,pdes);
        ps.setInt(4,quan);
        ps.setInt(5,total);
        ps.setString(6,user);
        ps.setInt(7,a);
        ps.executeUpdate();
                   
       int k = i-quan;
       
      PreparedStatement ps1 = con.prepareStatement("update products set pquantity ="+k+" where id = '"+id+"' ");   
         
   
      Mail m = new Mail();
          String msg ="Product Name:"+pname+"\nProduct Description :"+pdes+"\nProduct :"+a;
          m.secretMail(msg,email,email);  
         
          
          
          
     response.sendRedirect("user_viewproducts.jsp?msg=success");
    ps1.executeUpdate();
//}
        }
        else{
            
          Mail m = new Mail();
          String msg ="Product Name:"+pname+"\nProduct Description :"+pdes+"\nMessage :"+"Products are Out of stock . ";
          m.secretMail(msg,email,email);  
          response.sendRedirect("user_viewproducts.jsp?msg1=Failed");  
       } 
       
      
  }
    catch(Exception e)
    {
        response.sendRedirect("user_viewproducts.jsp?msg1=Failed");  
        
        
        System.out.println("Error in customer_purchase"+e.getMessage());
    }
%>

