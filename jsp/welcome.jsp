<%-- 
    Document   : welcome
    Created on : Oct 23, 2012, 4:40:00 AM
    Author     : Neha
--%>

<!DOCTYPE HTML>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="styles/pika.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="styles/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" media="screen" />
	<script type="text/javascript" src="scripts/ajax.js"></script>
	<script type="text/javascript" src="scripts/cufon.js"></script>
	<script type="text/javascript" src="scripts/functions.js"></script>
	<script type="text/javascript" src="scripts/jquery.pikachoose.js"></script>
	<script type="text/javascript">
				$(document).ready(function() {
				$("#pikame").PikaChoose();	});
	</script>
	<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="menu.js"></script>


<style type="text/css">

#menu {
    top:30px;
    margin:0 auto;
    width:80%;
}

</style>
	</head>
	<body background="images/back.jpg">
             <div id="site_title">
                    <div class="logo" align="left">
<img src="logo.gif" width="300" height="50" />
</div>
                 <marquee>    <h1 style="color:whitesmoke">Welcome to India's largest online Movie Ticket Booking Site</h1></marquee>
      
	  <div id="menu">
    <ul class="menu">
        <li><a href="Home.jsp"><span>Main Site</span></a>
            
                </li>
       
        <li><a href="contact.jsp"><span>Contact us</span></a></li>
    </ul>
</div><center></br></br></br>
        <div class="pikachoose">
          <ul id="pikame">
            
            <li><a href=""><img src="images/home/2.jpg" alt="" /></a></li>
            <li><a href=""><img src="images/home/3.jpg" alt="" /></a></li>
            <li><a href=""><img src="images/home/4.jpg" alt="" /></a></li>
          </ul>
        </div></center>
  

	<div id="copyright">Copyright &copy; 2012 <a href="http://apycom.com/">Apycom jQuery Menus</a></div>
</body>
</html>