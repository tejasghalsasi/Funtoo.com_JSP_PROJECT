<%-- 
    Document   : thanku
    Created on : Mar 30, 2013, 7:34:12 PM
    Author     : se
--%>

<%@page import="java.sql.*;" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="bg.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>thank u</title>
    </head>
    <body>
        <h1>Thank u for your valuable feedback</h1><br><a href="index.jsp">Return home</a>
    </body>
</html>
<%

  try
    {
String email=request.getParameter("email");
String first=request.getParameter("first_name");
 String last=request.getParameter("last_name");
 String city=request.getParameter("city");
 String state=request.getParameter("state");
 String comments=request.getParameter("comments");
 
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg"); 
    String printrow="";
    Statement s=db.createStatement();
    String a="INSERT INTO feedback VALUES ('"+email+"','"+first+"','"+last+"','"+city+"','"+state+"','"+comments+"')";
    int count=s.executeUpdate(a);
     } catch(Exception e){out.println(e);}
 %>