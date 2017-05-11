<%-- 
    Document   : validate
    Created on : Mar 28, 2013, 9:26:22 PM
    Author     : se
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
boolean validate=false;
String email2="",password2="";
String password=request.getParameter("first_name");;
String email=request.getParameter("email");
try
    {
        String pname=request.getParameter("q");
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    
    Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg");
    String printrow="";
    Statement s=db.createStatement();
    String a="select * from cust where email='"+email+"' and password='"+password+"' ";
    ResultSet rs=s.executeQuery(a);
    boolean rec=rs.next();
    out.println("<table border=3>");
    if(!rec)
               {
        out.println("no data returned");
               }
       else {
        do{
             email2=rs.getString("email");
            password2=rs.getString("password");
            if(email.equals(email2)&&password.equals(password2))
                               {validate=true;}
        }while(rs.next());
    }
}
catch(Exception e){out.println(e);}    

if(request.getParameter("email").equals("crazy4@gmail.com")&& request.getParameter("first_name").equals("mangalore"))
       {
        response.sendRedirect("dashboard.jsp");
       }
else if(validate)
       {
    session.setAttribute("custemail",email);
    response.sendRedirect("cust.jsp");
       }

else
    response.sendRedirect("login.jsp");
%>