<%-- 
    Document   : bill
    Created on : Apr 7, 2013, 4:13:20 PM
    Author     : se
--%>
<link rel="stylesheet" type="text/css" href="bg.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <script type="text/javascript">
function printpage()
  {
  window.print()
  }
  </script>
    <head><title>Bill</title></head>
    <body>
     <br>PRINT THIS INVOICE OF TRANSACTION:<input type="button" value="print" onclick="printpage()">
    <br><a href="javascript:self.close()">Logout</a>
    <br>
        <%
  try
    {
      boolean there=true;
      String name="",no="0",company,spex,price;
String email=request.getParameter("email");
 String first=request.getParameter("first_name");
 String last=request.getParameter("last_name");
 String city=request.getParameter("city");
 String state=request.getParameter("state");
 String phone=request.getParameter("phone");
 String mode=request.getParameter("cod");
 out.println("NAME:"+first+"<br>SURNAME:"+last+"<br>EMAIL ADDRESS:"+email+"<br>PHONE SELECTED:"+phone+"<br>MODE OF PAYMENT:"+mode+"<br>PHONE DETAILS:<BR><BR>");
    Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg");   
    Statement s=db.createStatement();
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String a="select * from prod where name='"+phone+"'";
    ResultSet rs=s.executeQuery(a);
    boolean rec=rs.next();
    out.println("<table border=3>");
    if(!rec)
               {
        out.println("no data returned");
         there=false;      }
       else {
        do{
             name=rs.getString("name");
             no=rs.getString("prodno");
            company=rs.getString("company");
             spex=rs.getString("spex");
             price=rs.getString("price");
            out.print("<tr><td>"+name+"</td><td>"+no+"</td><td>"+company+"</td><td>"+spex+"</td><td>"+price+"</td></tr>" );
            
        }while(rs.next());
    }
    //orders
   if(there)  
              {
            a="INSERT INTO orders VALUES ('"+email+"','"+name+"')";
              int count=s.executeUpdate(a);
                }

    }
    catch(Exception e){out.println(e);}
    %>
        </body>
</html>