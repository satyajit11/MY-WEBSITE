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
String pn="",bidprodpd="",pi="";
 
int prid=0;

Connection con;
Statement st;
ResultSet rs;
%>
<%
prid=Integer.parseInt(request.getParameter("bidprid"));
out.println(prid);

bidprodpd=request.getParameter("bidprid");
session.setAttribute("bidprid",bidprodpd);
try
{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
catch(ClassNotFoundException as){}

	try
	{
	con=DriverManager.getConnection("jdbc:odbc:real");
	st=con.createStatement();
	rs=st.executeQuery("SELECT * from biddingdb where  bidproductid="+prid+" ") ;
	if(rs.next())
	{
	pi=rs.getString("image");
	pn=rs.getString("productdetails");
	 
	}
	
	}catch(SQLException asd){}
	%>
<script language="javascript">
function checkdata()
{
var res=true;
var x=document.form.bidamout.value;
 
if(x=="")
{alert("Enter a Valid Entry"); document.form.bidamout.focus(); res=false;}	
 
if(res==true)
{document.form.submit();}

}

</script>


<form action="bidpageupdate.jsp" method="post" name="form">
<table border="2">
<tr>
<td width="600"><img src="<%=pi%>" width="600" height="400"></td>
<td width="44" valign="top"> </td>
<td width="373"><p>	Property Details:</p>
<p> 	<%=pn%>		</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>	Enter BidAmount : 
 
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bidamout"></p>


<p align="right"><input type="button" value="BID NOW"  onClick="checkdata();"></td>
</tr>
</table>
</form>
 <table width="1063" border="0"  align="center" cellpadding="5" cellspacing="5" class="ani">
<tr>
<td width="799"  > Copyright @ 2013 Exclusivehomes.com - Real Estate India - Property - Properties in India - All Rights Reserved. </td>
</tr>
</table>
</body>
</html>
 