<%-- 
    Document   : regestered
    Created on : Mar 30, 2013, 7:04:37 PM
    Author     : se
--%>
<link rel="stylesheet" type="text/css" href="bg.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head><title>Registered users</title></head>
    <body>
    <%
    try
    {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg");  
     String printrow="";
    Statement s=db.createStatement();
    String a="select * from cust";
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
            String first=rs.getString("name");
            String last=rs.getString("surname");
            String city=rs.getString("city");
            String state=rs.getString("state");
            String password=rs.getString("password");
           
            out.print("<tr><td>"+email+"</td><td>"+password+"</td><td>"+first+"</td><td>"+last+"</td><td>"+city+"</td><td>"+state+"</td></tr>");
                  
        }while(rs.next());
    }
}
catch(Exception e){out.println(e);}   
%>
        </body>
</html>