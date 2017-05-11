<%-- 
    Document   : orders
    Created on : Apr 8, 2013, 5:55:43 PM
    Author     : Champ
--%>

<link rel="stylesheet" type="text/css" href="bg.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head><title>Current Orders</title></head>
    <body>
    <%
    try
    {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg");  
     String printrow="";
    Statement s=db.createStatement();
    String a="select * from orders";
    ResultSet rs=s.executeQuery(a);
    boolean rec=rs.next();
    out.println("<table border=3>");
    if(!rec)
               {
        out.println("no data returned");
               }
       else {
        do{
            
            
            
            String email=rs.getString("email");
            String prodno=rs.getString("prodno");
            
            out.print("<tr><td>"+email+"</td><td>"+prodno+"</td></tr>");
                  
        }while(rs.next());
    }
}
catch(Exception e){out.println(e);}   
%>
        </body>
</html>