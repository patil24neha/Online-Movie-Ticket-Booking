<%-- 
    Document   : Login
    Created on : Oct 23, 2012, 3:21:35 AM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>i-Reel</title>
        <link href="mainCss.css" rel="stylesheet" type="text/css" />
               <script>
 function validLogin()
 {
 if (document.form.u_id.value == "" && document.form.password.value == ""){

 alert ( "Please enter Login Name and password." );
 document.loginform.userName.focus();
 return false;
 }

if (document.form.u_id.value == ""){

 alert ( "Please enter Login Name." );
 document.loginform.userName.focus();
 return false;
 }
 if (document.form.password.value == ""){
 alert ( "Please enter password." );
 document.userform.password.focus();
 return false;
 }
 alert ( "Welcome User" );
 return true;
   document.regForm.submit();

}

 </script>

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div id="templatemo_middle">
            <br/>
            <br>
            <br>
        
            <form name="form"action="LoginServlet.do" class="login" onsubmit="return validLogin();">
            <h3 align="center" style="color:black">Login</h3>
            <table  align="center">
                <tr><td>User ID:</td><td><input type="text" name="u_id" value="" /></td></tr>
                <tr><td>Password:</td><td><input type="password" name="password" value="" /></td></tr>
                <tr><td><input type="submit" value="Login" class="button">
            </table><br>
          
            </form>
              <br>
            <br>
            <br>
            <br>
            <br>
  <div class="cleaner"></div>
    <br/>
        </div>
        <div class="cleaner"></div>
        <jsp:include page="mainFooter.jsp"/>
    </body>
</html>


