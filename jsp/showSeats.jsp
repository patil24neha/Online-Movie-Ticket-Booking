<%@page import="MyBean.Seat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

      <%@page import="java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
	function selectSeat(num)
	{

		var status = document.getElementById(num+"X").value;

		if(status=='1')
		{

			document.getElementById(num).style.backgroundColor = 'Pink';
			document.getElementById(num+"X").value = 3;
		}
		else
		{
			document.getElementById(num).style.backgroundColor = "Green";
			document.getElementById(num+"X").value = 1;
		}

	}

	function bookIt()
	{

		var seats = new Array();
                var price = new Array();
		var count = 0;
                var muvi = document.getElementById("mname").value;
                var tm = document.getElementById("mtime").value;
                var dy = document.getElementById("mday").value;
                var date = document.getElementById("mdate").value;

		for(var i=1;i<=60;i++)
		{
			var tempVal = document.getElementById(i+"X").value;
			if(tempVal =='3')
			{
				//alert(i);
				seats.push(i);
                                price.push(document.getElementById(i+"P").value);
				tempVal = document.getElementById(i+"X").value=1;
				count++;
			}

		}

		if(count>10)
		{
			alert("More than 10 seats are not allowed!");
			return false;
		}

                if(count==0)
		{
			alert("Please select atleast one seat");
			return false;
		}

		
                //alert(count);
		document.location.href = "BookController?seats="+seats+"&prices="+price+"&mname="+muvi+"&mtime="+tm+"&mday="+dy+"&mdate="+date;
	}
	</script>


</head>
<body>
<h2 align="center">Seat info</h2>
<form name="bookForm" action="successBook.jsp">

     <%
                String muvi = request.getAttribute("muvi").toString();
                String time = request.getAttribute("time").toString();
                String day = request.getAttribute("day").toString();
                String mdate = request.getAttribute("mdate").toString();
     %>
<table align="center" cellspacing="10">
<%
int count=0,seatVal;
String color=null;
String booked = " ";
ArrayList<Seat> seats = (ArrayList<Seat>)request.getAttribute("seats");
for(int i=0;i<seats.size();i++)
{

%>
<tr>
<%
	for(int j=0;j<10 && (i+j)<seats.size();j++)
	{
		booked=" ";
		count++;
		if(seats.get(i+j).getStatus().equalsIgnoreCase("N"))
		{
			color="Green";
			seatVal = 1;
		}
		else{
			color="Orange";
			booked="disabled=\"disabled\"";
			seatVal = 0;
		}
		if(j==2 || j==8)
		{
%>
<td> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
<%
		}
%>
<td><input type="button" id="<%=seats.get(i+j).getSeatNo() %>" value="<%=seats.get(i+j).getSeatNo() %>" style="width: 80px; background-color: <%=color %>; height: 50px;"
<%=booked %> title="<%=seats.get(i+j).getPrice() %> Rs." onclick="selectSeat(<%=seats.get(i+j).getSeatNo() %>);" />
<input type="hidden" id="<%=seats.get(i+j).getSeatNo() %>X" value="<%=1 %>" />
<input type="hidden" id="<%=seats.get(i+j).getSeatNo() %>P" value="<%=seats.get(i+j).getPrice() %>" />
</td>

<%

}
i=count-1;
%>
</tr>
<%
}
%>
</table>
<br>
<br>
<br>
<table align="center" >
<tr>
<td>
<input type="Button" value="Book" onclick="bookIt()" />
</td>
</tr>
</table>
<input type="hidden" value="<%=muvi %>" id="mname" />
<input type="hidden" value="<%=time %>" id="mtime" />
<input type="hidden" value="<%=day %>" id="mday" />
<input type="hidden" value="<%=mdate %>" id="mdate" />
<h3 align="center"><a href="Logout.do">Logout</a></h3>
</form>
    <table border="0" colspacing="6">
            <thead>
                <tr>
                    <th>COLOR</th>
                    <th>STATUS</th>
                </tr>
<br><br>
                <tr>
                <td><img src="images/green.jpg" width="30" height="30"/>
                </td>
                    <td>Available</td>
                </tr>
                <tr>
                    <td><img src="images/pink.jpg" width="30" height="40" alt="pink"/>
                    </td>
                    <td>Selected</td>
                </tr>
                <tr>
                    <td><img src="images/orange.jpg" width="30" height="30" alt="orange"/>
                    </td>
                    <td>Booked</td>
                </tr>
        </table>

</body>
</html>