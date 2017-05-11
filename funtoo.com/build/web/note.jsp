<%-- 
    Document   : note
    Created on : 11 Apr, 2013, 9:34:00 AM
    Author     : Milind
--%>
<link rel="stylesheet" type="text/css" href="bg.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
 <!DOCTYPE html>
<html>
    <head><title>Note</title></head>
    <body>
        <img src="note.jpg" border="3"><br><BR>
    <%
    try
    {
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg");
    String printrow="";
    Statement s=db.createStatement();
    String a="select * from prod where name='GALAXY NOTE'";
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