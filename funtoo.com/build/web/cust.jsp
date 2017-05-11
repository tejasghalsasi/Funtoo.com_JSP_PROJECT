<%-- 
    Document   : cust
    Created on : Mar 30, 2013, 7:21:25 PM
    Author     : se
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="bg.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome &nbsp; <%= session.getAttribute("custemail")%></title>
    </head>
    <body>
        <ol>
            <li>Welcome &nbsp; <%= session.getAttribute("custemail")%></li>
            <li>Check out our phone collection:<a href="prod.jsp" target="_blank"> click here!</a></li>
            <li> To place an order:<a href="place.jsp" target="_blank"> click here!</a></li>
            <li><a href="javascript:self.close()">Logout</a></li>
        </ol>

    </body>
    
</html>
