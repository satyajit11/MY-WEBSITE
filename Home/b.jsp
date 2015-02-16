<%@ page import ="java.sql.*;"%>
<html>
<head>
<title>Untitled Document</title>


<!-- Start css3menu.com HEAD section -->
<link rel="stylesheet" href="b_files/css3menu1/style.css" type="text/css" />
<link rel="stylesheet" href="b_files/css3menu2/style.css" type="text/css" />
<!-- End css3menu.com HEAD section -->

</head>

<body background="bac.jpg" text="#FFFFFF">

<table border=0 width="1248" cellspacing="0" height="80" align="center">
<tr>
<td height="78" colspan="2"><img src="logo.jpg" valign="top" >
   </td>
</tr>


<tr>


<td height="42">


<!-- Start css3menu.com BODY section id=2 -->
<ul id="css3menu2" class="topmenu">
	<li class="topfirst"><a href="index.html" title="HOME" style="height:16px;line-height:16px;">HOME</a></li>
	<li class="topmenu"><a href="property1.html" title="PROPERTY" style="height:16px;line-height:16px;">PROPERTY</a></li>
	<li class="topmenu"><a href="#" title="SELLING" style="height:16px;line-height:16px;"><span>SELLING</span></a>
	<ul>
		<li class="subfirst"><a href="#" title="HOME FOR SALE">For Sale</a></li>
		<li><a href="#" title="HOME FOR BIDDING">For Bidding</a></li>
	</ul>

	</li>
	<li class="topmenu"><a href="#" title="REQUIREMENT" style="height:16px;line-height:16px;"><span>REQUIREMENT</span></a>
	<ul>
		<li class="subfirst"><a href="listyourproperty.html" title="REQUIREMENT FOR SALE">For Sale</a></li>
		<li><a href="#" title="REQUIREMENT FOR BUY">For Buy</a></li>
		<li><a href="rentalpropertysearch.html" title="REQUIREMENT for rent">For Rent</a></li>
	</ul>

	</li>
	<li class="toplast"><a href="h5.html" title="BIDDING" style="height:16px;line-height:16px;">BIDDING</a></li>
</ul>


<p style="display:none"><a href="http://css3menu.com/">CSS Buttons with Images Css3Menu.com</a></p>
<!-- End css3menu.com BODY section -->
</td>
</tr>
</table>
<hr/>

<%! 
String pn="",pr="",type="",lm="",pa="",pi="",pp="";
double cost;
int prid=0;
Connection con;
Statement st;
ResultSet rs;
%>

<%
prid=Integer.parseInt(request.getParameter("pid"));
pp=request.getParameter("pid");
session.setAttribute("pid",pp);
try
{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
catch(ClassNotFoundException as){}

	try
	{
	con=DriverManager.getConnection("jdbc:odbc:real");
	st=con.createStatement();
	rs=st.executeQuery("SELECT * from propertydetail where  code="+prid+" ") ;
	if(rs.next())
	{
	pn=rs.getString("propertyname");
	pr=rs.getString("proprieter");
	type=rs.getString("type");
	lm=rs.getString("nearestlandmark");
	pa=rs.getString("propertyarea");
	pi=rs.getString("propertyimage");
	cost=rs.getDouble("sellprice");
	}
	
	}catch(SQLException asd){}
	%>

<form action="bank1.html" method="post">
<table border="0">
<tr>
<td><img src="<%=pi%>" width="600" height="400"></td><td valign="top"> 
<p>	Property Type: 	<%=pn%>		</p>
<p> Properiter : <%=pr%>		</p>
<p> Type : <%=type%> 			</p>
<p> Nearest LandMark : <%=lm%> </p>
<p> Prpperty Area : <%=pa%> 	</p>
<p> Cost Of Property :  <%=cost%> </p>
<p align="right"><input type="submit" value="Buy Now"></td>
</tr>
</table>
</form>

</body>
</html>
 