<%-- 
    Document   : MovieSelect
    Created on : Oct 23, 2012, 3:51:52 AM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>i-Reel</title>
        <link href="mainCss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div id="templatemo_middle">
            <br/>  
 <title>Movie Selection</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css" />
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
  <script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
  </script>

    </head>
    <body>
<form align="center" name="SelectServlet" action="BookTicketController.do" method="POST">
        <h1 align="center">Select Your Movie Details Here </h1>
        <br><br>
        <table align="center" cellpadding="5" cellspacing="5">
            <tr>
                <td>
            Movie :
                </td>
                <td>
    <select  name="mname">
            <option>Ek Tha Tiger</option>
            <option>Agneepath</option>
            <option>HouseFull</option>
            <option>Players</option>

        </select>
                </td>
        </tr>
        <tr>
            <td>Date : </td>
            <td><input type="text" id="datepicker" name="mdate" /></td>
        </tr>
        <tr>
            <td>Timing</td>
            <td>
        <select name="time">
            <option>9.00</option>
            <option>12.00</option>
            <option>3.00</option>
            <option>5.30</option>
        </select>
            </td>
        </tr>
        <tr>
            <td>Day</td>
            <td>
        <select name="day">
            <option>monday</option>
            <option>tuesday</option>
            <option>wednesday</option>
            <option>thursday</option>
            <option>friday</option>
            <option>saturday</option>
            <option>sunday</option>

        </select>
            </td>
        </tr>
        <tr>
            <td>
        <input type="submit" value="Book" name="submit" />
            </td>
            <td>
        <input type="reset" value="Reset" name="reset" />
            </td>
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


