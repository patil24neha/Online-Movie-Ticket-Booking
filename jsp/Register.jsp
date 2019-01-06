<%-- 
    Document   : Register
    Created on : Oct 23, 2012, 2:52:34 AM
    Author     : Neha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>i-Reel</title>
        <script type="text/javascript">
    function validLogin()
    {
        if(document.regForm.u_id.value=="")
            {
                alert("Enter user id!");
                return false;
            }
         if(document.regForm.fname.value=="")
            {
                alert("Enter first name!");
                return false;
            }
             if(document.regForm.lname.value=="")
            {
                alert("Enter last name!");
                return false;
            }
             if(document.regForm.password.value=="")
            {
                alert("Enter password!");
                return false;
            }
             if(document.regForm.ans.value=="")
            {
                alert("Enter your answer!");
                return false;
            }
            if(document.regForm.c_no.value=="")
            {
                alert("Enter card number!");
                return false;
            }
            document.regForm.submit();

    }

</script>



        <link href="mainCss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div id="templatemo_middle">
            <br/>


	<title> Register Now </title>

      <h1 align="center";><u> Register Here </u></h1>

   <form name="regForm" action="RegisterServlet.do" method="POST" onsubmit="return validLogin();">

<table align="center" cellspacing="8" cellpadding="5">

    	<tr>
		<th><div class="left">User ID</div></th>
		<td><input type="text" name="u_id" value="" /></td>
	</tr>

	<tr>
		<th><div class="left">First Name</div></th>
		<td><input type="text" name="fname" value="" /></td>
	</tr>

	<tr>
		<th><div class="left">Last Name</div></th>
		<td><input type="text" name="lname" value="" /></td>
        </tr>

	<tr>
		<th><div class="left">Password</div></th>
		<td><input type="password" name="password" value="" /></td>
	</tr>

	<tr>
		<th><div class="left">Security Question</div></th>

		<td><select name="securityq">
        	 <option>What is your pet name?</option>
        	 <option>What is your first teacher name?</option>
        	 <option>What is your best friend's name ?</option>
        	 </select></td>
	</tr>

	<tr>
		<th><div class="left">Answer</div></th>
		<td><input type="text" name="ans" value="" /></td>
	</tr>
        	<tr>
		<th><div class="left">Card NO</div></th>
		<td><input type="text" name="c_no" value="" /></td>
	</tr>


        <tr>

            <th><div class="left"><input type="submit" name="submit" value="Submit" style="font-size: 18px;"/></div></th>
            <td><input type="reset" name="reset" value="Reset" style="font-size: 18px;"/></td>

        </tr>

</table>
</form>
      <div class="cleaner"></div>
    <br/>
        </div>
        <div class="cleaner"></div>
        <jsp:include page="mainFooter.jsp"/>
    </body>
</html>


