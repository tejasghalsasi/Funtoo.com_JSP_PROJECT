<%-- 
    Document   : registerthis
    Created on : Mar 30, 2013, 6:06:41 PM
    Author     : se
--%>
<link rel="stylesheet" type="text/css" href="bg.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%> 
<html>
<head>
<title>Thank u for registering</title>
</head>
<body>
    <h1>Thank u for Registering with us</h1><br><a href="index.jsp">Return home</a>
<%
  try
    {
String email=request.getParameter("email");
 String first=request.getParameter("first_name");
 String last=request.getParameter("last_name");
 String city=request.getParameter("city");
 String state=request.getParameter("state");
 String password=request.getParameter("password");
 
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg");
    Statement s=db.createStatement();
    String a="INSERT INTO cust VALUES ('"+email+"','"+first+"','"+last+"','"+city+"','"+state+"','"+password+"')";
    int count=s.executeUpdate(a);
     } catch(Exception e){out.println(e);}
 %>
</body>
</html>