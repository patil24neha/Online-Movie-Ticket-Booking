<%--
    Document   : InterviewResult
    Created on : Oct 11, 2012, 12:06:34 PM
    Author     : Neha
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
        <link rel="stylesheet" href="style.css" type="text/css" /><style>._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->
        <script type="text/javascript">

today = new Date

weekDayName = new Array ("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")

monthName = new Array ("January","February","March","April","May","June","July","August","September","October","November","December")

function printDate()
{
document.write("<b>" + weekDayName[today.getDay()]+ ", " + monthName[today.getMonth()] + " " + today.getDate()+ "</b>")
}
</script>





    </head>
    <body>
    <div class="logo" align="center">
<img src="images/logo.gif" width="390" height="100" />
</div>

<table align="center">

  <!--STart writing your code from here-->
  <tr>
      <td>
          <table border="0" align="left">
             <tbody>
                 <tr>

                     <td><font size="50" color="black"><b>iReel Movie Theatre</b></font></td>
                 </tr>
                 <tr>
                     <td colspan="2"><b>Business made easy</b></td>
                 </tr>
             </tbody>
         </table>
          <div style="float:right">

        <SCRIPT LANGUAGE="JAVASCRIPT">printDate()</SCRIPT>

          </div>
      </td>
  </tr>
  <tr>
      <td>          <center>
              <h2>
                 Customer Details<br/>
              </h2>
          </center>
          <form  id="ResumeList" name="InterviewResult" method="post">
          <table align="center" border="5" cellpadding="7" cellspacing="5" border="2">
                     <tr>
                            <th>ID</th>
                            <th>fname</th>
                            <th>lname</th>
                            <th>password</th>
                            <th>securityq</th>
                            <th>ans</th>
                            <th>c_no</th>

                        </tr>


                    <%
            try {
            String connectionURL = "jdbc:oracle:thin:@//localhost:1521/orcl2";
            Connection connection = null;
            Statement statement = null;
            ResultSet rs = null;
            Class.forName("oracle.jdbc.OracleDriver").newInstance();
            //System.out.println("************************1");
            connection = DriverManager.getConnection(connectionURL,"scott","sys");
            statement = connection.createStatement();
            //System.out.println("************************2");
            String QueryString = "select * from scott.CUSTOMER";
            rs = statement.executeQuery(QueryString);
            //System.out.println("************************3");
            %>

            <%
            while (rs.next()) {
            %>

            <TR>
            <TD><%=rs.getString(1)%></TD>
            <TD><%=rs.getString(2)%></TD>
            <TD><%=rs.getString(3)%></TD>
            <TD><%=rs.getString(4)%></TD>
            <TD><%=rs.getString(5)%></TD>
            <TD><%=rs.getString(6)%></TD>
            <TD><%=rs.getString(7)%></TD>

            </TR>
            <% } %>
            <%
            // close all the connections.
            rs.close();
            statement.close();
            connection.close();
            } catch (Exception e) {
            %>
            </font>
            </b>
            <%
            out.println("Unable to connect to database.");
            }
            %>




</table>

    <div style="float:right">
    <input type="hidden" name="anything" value=" "/>

</div>

   </form>

      </td>
  </tr>

</table>

            <a href="Admin.jsp">Back</a>

          </body>
</html>
