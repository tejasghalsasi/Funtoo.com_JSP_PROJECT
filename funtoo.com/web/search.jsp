<%-- 
    Document   : search
    Created on : Mar 28, 2013, 7:41:02 PM
    Author     : se
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>Search a Phone</title>
<link rel="stylesheet" type="text/css" href="bg.css">
</head>
<body>
<form method="get" action="phonesearch.jsp">
<div style="border:1px solid black;padding:4px;width:20em;">
 <table border="0" cellpadding="0"> 
<tr><td> <input type="text" name="q" size="40" placeholder="Type To Search" maxlength="255"  value="" />
</tr>
<tr><td align="center" style="font-size:75%"> <input type="submit" value="Phone Search" /></td></tr> 
</table>
 </div>
 </form>
</body>
</html>