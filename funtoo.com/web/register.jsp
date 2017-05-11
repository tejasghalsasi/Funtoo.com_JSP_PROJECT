<%-- 
    Document   : register
    Created on : Mar 28, 2013, 8:16:33 PM
    Author     : se
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><title>Register with us today!</title>
<link rel="stylesheet" type="text/css" href="bg.css">
<script>
    var validate = function () {
        if( (!(/^([a-z0-9])([\w\.\-\+])+([a-z0-9])\@((\w)([\w\-]?)+\.)+([a-z]{2,4})$/i.test(document.contact_form.email.value))) || document.contact_form.email.value == "" || document.contact_form.password.value == "" || document.contact_form.first_name.value == "" || document.contact_form.last_name.value == "" || document.contact_form.city.value == "" || document.contact_form.state.value == "") {
            document.getElementById('error').innerHTML = '<strong style="color:red;">Please fill in the form correctly! DON\'T leave any field blank! <\/strong>';
            return false;
        }
    }
</script>
</head>
<body>
<section>
    <h2>Register with Us today!</h2> 
    <form action="registerthis.jsp" method="post" name="contact_form" onsubmit="return validate()">
        <fieldset>
               
               <label>E-Mail:</label>
                <input type="email" name="email" title="Enter a valid email address!" placeholder="me@example.com" onclick="select()" required /> <br/>
            <label>Password:</label>
                <input type="password" name="password" title="Enter your password!" placeholder="password" onclick="select()" required /> <br/>
            
            
                <label>First Name:</label>
                <input type="text" name="first_name" title="Enter your first name!" placeholder="First Name" onclick="select()" required /> <br/>
            
            <label>Last Name:</label>
                <input type="text" name="last_name" title="Enter your last name!" placeholder="Last Name" onclick="select()" required /> <br/>
            
            <label>City:</label>
                <input type="text" name="city" title="Enter your city!" placeholder="City" onclick="select()" required /> <br/>
            
            <label>State:</label>
                <input type="text" name="state" title="Enter your state!" placeholder="State" onclick="select()" required /> <br/>
            
          </fieldset>
            
        <fieldset>
            <legend>Submit</legend>
            <label id="error"> </label> <br/>
            <input type="submit" value="Submit" />
            <input type="reset" /> <br/>
        </fieldset>
    </form>
</section>
</body>
</html>