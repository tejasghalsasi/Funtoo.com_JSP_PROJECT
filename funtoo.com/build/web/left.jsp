<%-- 
    Document   : left
    Created on : Mar 28, 2013, 7:40:00 PM
    Author     : se
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>
</title>
</head>
<body background="disco.jpg"><pre><i>
 <a href="nokia.jsp"target="_blank"><font color="yellow">Nokia</font></A>
<hr></hr>  
<a href="samsung.jsp"target="_blank"><font color="yellow">Samsung</font></A>
<hr></hr>  
<a href="search.jsp"target="_blank"><font color="yellow">Search a Phone</font></A>
<hr></hr>  
<a href="contactus.jsp"target="_blank"><font color="yellow">Contact Us</font></A>
<hr></hr>  
<A HREF="aboutus.jsp"target="_blank"><font color="yellow">About Us</font></A>
<hr></hr>  
</i>
<%
try
    {
        String hitsstring;
    Class.forName("org.apache.derby.jdbc.ClientDriver");
   
    Connection db=DriverManager.getConnection("jdbc:derby://localhost:1527/tg","tg","tg"); 
    Statement s=db.createStatement();
    String a="select * from hitcounter";
    ResultSet rs=s.executeQuery(a);
        boolean rec=rs.next();
do{
      hitsstring=rs.getString("hits");
            
                  
        }while(rs.next());

      int hits=Integer.parseInt(hitsstring);
      hits++;
      
      a="insert into hitcounter values('"+hits+"')";
      int i=s.executeUpdate(a);
      out.print("<font color=yellow><h3>TOTAL HITS:"+hits+"</font></h3>");
    
    
    
    
    }
catch(Exception e){out.println(e);}   
%>
<hr></hr>
</body>
</html>
