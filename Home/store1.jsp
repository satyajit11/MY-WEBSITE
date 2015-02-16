<%@ page import ="java.sql.*;"%>

<html>

<head>

<title>for RENT</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" href="" type="text/css">


<!-- Start css3menu.com HEAD section -->
<link rel="stylesheet" href="listapartments1_files/css3menu1/style.css" type="text/css" />
<link rel="stylesheet" href="listapartments1_files/css3menu2/style.css" type="text/css" />
<link rel="stylesheet" href="listapartments1_files/css3menu5/style.css" type="text/css" />
<link rel="stylesheet" href="listapartments1_files/css3menu6/style.css" type="text/css" />
<!-- End css3menu.com HEAD section -->

</head>
<body background="bac.jpg" bgcolor="#FFFFFF">

<table border=0 width="1248" cellspacing="0" height="80" align="center">
<tr>
<td height="78" colspan="2"><marquee scrolldelay="0">
 <font face="broadway" SIZE=8 COLOR= white> EXCLUSIVEHOME.COM</font>
  </marquee></td>
</tr>






<td height="70" colspan="2" valign="top"> <!-- End css3menu.com BODY section -->
  <p><!-- Start css3menu.com BODY section id=1 -->
<ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="index.html" title="HOME" style="height:16px;line-height:16px;">HOME</a></li>
	<li class="topmenu"><a href="#" title="PROPERTY" style="height:16px;line-height:16px;"><span>PROPERTY</span></a>
	<ul>
		<li class="subfirst"><a href="#" title="Property For Sale">Property For Sale</a></li>
		<li><a href="listyourproperty.html" title="Property To Buy">Property To Buy</a></li>
		<li><a href="rentalpropertysearch.html" title="Property For Rent">Property For Rent</a></li>
		<li><a href="listapartments.html" title="Property Features">Property Features</a></li>
	</ul>

	</li>
	<li class="topmenu"><a href="#" title="SELLING" style="height:16px;line-height:16px;"><span>SELLING</span></a>
	<ul>
		<li class="subfirst"><a href="#" title="Home For Sale">Home For Sale</a></li>
		<li><a href="#" title="Home For Bidding">Home For Bidding</a></li>
	</ul>

	</li>
	<li class="topmenu"><a href="#" title="REQUIREMENT" style="height:16px;line-height:16px;"><span>REQUIREMENT</span></a>
	<ul>
		<li class="subfirst"><a href="#" title="For Buy">For Buy</a></li>
		<li><a href="#" title="For Sale">For Sale</a></li>
		<li><a href="#" title="For Rent">For Rent</a></li>
	</ul>

	</li>
	<li class="toplast"><a href="#" title="BIDDING" style="height:16px;line-height:16px;">BIDDING</a></li>
</ul>


<p style="display:none"><a href="http://css3menu.com/">jQuery Multi Level CSS Menu Css3Menu.com</a></p>
<!-- End css3menu.com BODY section -->
&nbsp;</p>
<p>&nbsp;</p></td>
  <td width=256><p style="display:none"><a href="http://css3menu.com/">jQuery Multi Level CSS Menu Css3Menu.com</a></p>
<p>
  <!-- End css3menu.com BODY section -->
<!-- Start css3menu.com BODY section id=2 -->
<ul id="css3menu2" class="topmenu">
	<li class="topfirst"><a href="#" title="SIGN IN" style="height:16px;line-height:16px;">SIGN IN</a></li>
	<li class="topmenu"><a href="#" title="REGISTER" style="height:16px;line-height:16px;">REGISTER</a></li>
	<li class="toplast"><a href="search1.html" title="SEARCH" style="height:16px;line-height:16px;">SEARCH</a></li>
</ul>


<p style="display:none"><a href="http://css3menu.com/">jQuery Multi Level CSS Menu Css3Menu.com</a></p>
<!-- End css3menu.com BODY section -->

&nbsp;</td>
</tr>
</table>
	

<tr >
	<td width=1250 nowrap >  <font FACE=“Pristina” SIZE=6 COLOR=white>&nbsp;&nbsp; &nbsp;LIST APPARTMENTS </font></td>
	

	
  </tr>

<%! 
String a="",b="",b1="",aa="",bb="",bb1="";
boolean res=false;
double ag,agg ;
double ag1,agg1 ;
 
Connection con;
Statement st;
ResultSet rs;
int total=0;
%>

<%
a=request.getParameter("select3");
b=request.getParameter("pri");
b1=request.getParameter("select4");
if(b!=null)
{
ag=Double.parseDouble(b);
}

try
{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
catch(ClassNotFoundException as){}

	try
	{
	con=DriverManager.getConnection("jdbc:odbc:real");
	
	st=con.createStatement();
	rs=st.executeQuery("SELECT * from propertydetail where  city='"+a+"' and  propertytype='"+b1+"' and dealtype='RENT' ");
	res=false;
	total=0;
	while(rs.next())
	{
	ag1=rs.getDouble("rentprice"); 
	if(ag1<=ag)
	{
	total++;
	}
	}%>

	

	<tr>
	<td colspan="2" valign="top" ><table width=1248 height="119" border="1" >
      <tr >
        <td width="1091" height="43" ><font color="#FFFFFF"><b>Total Results: <%=total%></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font color="#FFFFFF"><b>Freehold Property Search Result</b></font>&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<font color="#FFFFFF"><b></b> </font>&nbsp;&nbsp;		</td>
        <td width="166" ><!-- Begin Free-Buttons.org -->
<style>#web-buttons-idmk7np a{display:block;color:transparent;} #web-buttons-idmk7np a:hover{background-position:left bottom;}a#web-buttons-idmk7npa {display:none}</style>
<table id="web-buttons-idmk7np" width=0 cellpadding=0 cellspacing=0 border=0><tr>
<td style="padding-right:0px" title ="    ">&nbsp;</td>
</tr></table>
 
<!-- End Free-Buttons.org -->&nbsp;</td>
      </tr>
    </table></td></tr>

	
	
	<td width="1250"><table width="1250" border="1" >
      <tr>
        <th width="147" height="28" scope="col"><font color="#FFFFFF"><u>CITY</u></font></th>
        <th width="182" height="28"scope="col"><font color="#FFFFFF"><u>PRICE</u></font></th>
        <th width="201" height="28"scope="col"><font color="#FFFFFF"><u>PROPERTY TYPE</u></font> </th>
        <th width="115" height="28"scope="col"><font color="#FFFFFF"><u>IMAGE</u></font></th>
        <th width="179" height="28"scope="col"><font color="#FFFFFF"><u>AVAILABILITY</u></font></th>
        <th width="143" height="28"scope="col"><font color="#FFFFFF"><u>ACTION</u></font></th>
        <th width="237" height="28"scope="col">&nbsp;</th>
      </tr>
</table></td>

	
	<%
	int code=0;
    rs=st.executeQuery("SELECT * from propertydetail where  city='"+a+"' and propertytype='"+b1+"' and dealtype='RENT' ");
	res=false;
	while(rs.next())
	{
	ag1=rs.getDouble("rentprice"); 
	if(ag1<=ag)
	{
	code=rs.getInt(1);
	res=true;
	%>
	<td width="1250"><table width="1250" border="1" >
		<tr>
        <th width="145" height="28" scope= "col"> <font color="#FFFFFF"><%=rs.getString("city")%></font></th> 
        <th width="184" height="28" scope="col"><font color="#FFFFFF"><%=ag1%></font></th>
        <th width="200" height="28" scope="col"> <font color="#FFFFFF"><%=rs.getString("propertytype")%></font></th>
        <th width="116" height="28"scope="col"><img src="<%=rs.getString("propertyimage")%>"  height="100" width="100"></th>
        <th width="179" height="28"scope="col"><font color="#FFFFFF"><%=rs.getString("availability")%></font></th>
		<th width="143"  height="28"scope="col">
		<form method="post" action="b.jsp">
		<input type="hidden" value="<%=code%>" name="pid">
		<input type="image" src="proceed.jpg">	
		</form>
		</th>
        
        <th width="237" height="28" scope="col">&nbsp;</th>
      </tr></table></td>

	<%}
	}
	if(res==false)
	{%>
	<h3> <font color="#FFFFFF">No Result Found</font> </h3>
	<%}
	
	}
	catch(SQLException as)
	{out.println(as);}%>


</body>
</html>