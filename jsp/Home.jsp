<%-- 
    Document   : Home
    Created on : Oct 23, 2012, 4:47:49 AM
    Author     : Neha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>WTFoods.com Home Page</title>
        <script type="text/javascript" src="mainJS.js"></script>
        <link href="mainCss.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
     
       
        <div id="templatemo_header">

            <div id="header_left">
                <div id="site_title">

              

                </div> 

            </div>

        
                <div id="templatemo_menu">

                    <ul>
                        <li><a href="Home.jsp" class="current">Home</a></li>                       
                        <li><a href="Login.jsp">Login to Book</a></li>
                        <li><a href="Register.jsp">Register</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                         
                    </ul>    	
                </div> 
                <!-- end of templatemo_menu -->

            </div>
            <div class="cleaner"></div>
        
        <table border="0" align="center">
            <tr><td>
                    <%--SLIDER STARTS--%>
                    <div id="wrapper">
                        <div id="zoom-slider">
                            <img src="images/1.jpg"  />
                            <img src="images/2.jpg"  />
                             <img src="images/3.jpg"  />
                              <img src="images/4.jpg"  />
                            
                        </div>
                    </div>
                    <%--SLIDER ENDS --%></td>
          
              
        </table>

<jsp:include page="mainFooter.jsp"/>

</body>
</html>
