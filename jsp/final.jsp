
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="MyBean.Final" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <link rel="stylesheet" type="text/css" href="mystyle.css" />

    </head>
    <body>
        <h1 align="center"><u>Your Details </u></h1>
       `<%
       String uid = request.getParameter("uid");
       String seatNo = request.getParameter("seats");
       String price = request.getParameter("price");
       String mname = request.getParameter("mname");
       String mdate = request.getParameter("mdate");
       String mtime = request.getParameter("mtime");
       String mday = request.getParameter("mday");
       String prices[] = price.split(",");
       int amount = 0;

       for(int i=0;i<prices.length;i++)
           {
            amount+=Integer.parseInt(prices[i]);
           }
       %>
      
       <table border="2" align="center" cellpadding="7" cellspacing="7">

       
  <tr>
  <th>User ID :</th>
  <td><%=uid %></td>
  </tr>  
    
 <tr>
     <th>Movie name :</th>
     <td><%=mname %></td>
 </tr>
 <tr>
     <th>Screen :</th>
     <td>5</td>
 </tr>

 <tr>
     <th>Date :</th>
     <td><%=mdate %></td>
 </tr>

 <tr>
     <th>Time :</th>
     <td><%=mtime %></td>
 </tr>

 <tr>
     <th>Day :</th>
     <td><%=mday %></td>
 </tr>
 
 <tr><th>No. of Seats :</th>
     <td><%=prices.length %></td>
 </tr>
 
 <tr><th>Seat Nos :</th>
     <td><%=seatNo %></td>
 </tr>
 
 <tr><th>Total Amount :</th>
     <td><%=amount %></td>
 </tr>
 
     
   </table>
  

 <h2 align="center">THANK YOU !!</h2>
    </body>
   <h3 align="center"><a href="Logout.do">Logout</a></h3>
</html>
