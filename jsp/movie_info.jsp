<%--
    Document   : movie_info
    Created on : Oct 7, 2012, 3:04:41 AM
    Author     : Neha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="MyBean.Movies"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
   <body background="background.jpg"; topmargin="10px"; align="center">

              <h2>Now Showing</h2>

        <form action="MovieServlet.do" class="MovieServlet" method="post">
                    <c:set var="Movies" value="${Movies}" scope="request" />

   <table align="center" border="1">
        
       <c:forEach var="Movies" items="${Movies}">
  <tr>
      <th ROWSPAN=5 ><c:out value="${Movies.mid}" /></th>
  <td><c:out value="${Movies.mid}" /></td>
  </tr>

 <tr><td><c:out value="${Movies.mname}" /></td> </tr>
 <tr><td><c:out value="${Movies.actor}" /></td> </tr>
 <tr><td><c:out value="${Movies.actress}" /></td> </tr>
 <tr><td><c:out value="${Movies.rate}" /></td> </tr>

     </c:forEach>
  </table>
                     <input type="submit" value="show"/>
      
                    <a href="MovieSelect.jsp">Select Show and Timing</a>
                    <h3 align="center"><a href="Logout.do">Logout</a></h3>
   </form>
    </body>
</html>

