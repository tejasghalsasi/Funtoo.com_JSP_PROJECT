<%-- 
    Document   : samsung
    Created on : Apr 7, 2013, 12:20:14 PM
    Author     : se
--%>
<link rel="stylesheet" type="text/css" href="bg.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
    <head><title>Samsung</title></head>
    <body>
    <%
    try
    {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    
    Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg");
    String printrow="";
    Statement s=db.createStatement();
    String a="select * from prod where company='SAMSUNG'";
    ResultSet rs=s.executeQuery(a);
    boolean rec=rs.next();
    out.println("<table border=3>");
    if(!rec)
               {
        out.println("no data returned");
               }
       else {
        do{
            String name=rs.getString("name");
            String no=rs.getString("prodno");
            String company=rs.getString("company");
            String spex=rs.getString("spex");
            String price=rs.getString("price");
            out.print("<tr><td>"+name+"</td><td>"+no+"</td><td>"+company+"</td><td>"+spex+"</td><td>"+price+"</td></tr>" );
            
        }while(rs.next());
    }
}
catch(Exception e){out.println(e);}   
%>
        </body>
</html>