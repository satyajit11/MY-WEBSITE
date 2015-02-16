<%@ page import ="java.sql.*;"%>

<html>
<head>
<link type="text/css" rel="stylesheet" href="lightbox-form.css">
<script src="lightbox-form.js" type="text/javascript"></script>
<link href="style2.css" rel="stylesheet" type="text/css">

<link href="mystyle.css" rel="stylesheet" type="text/css">


<!-- Start css3menu.com HEAD section -->
<link rel="stylesheet" href="h5_files/css3menu1/style.css" type="text/css" />
<!-- End css3menu.com HEAD section -->

</head>

<body background="bac.jpg" text="#0000FF">
<center>

 
	

<tr >
	<td width=1250 nowrap >  <font FACE=“Pristina” SIZE=6 COLOR=white>&nbsp;&nbsp; &nbsp;LIST APPARTMENTS </font></td>
	

	
</tr>

<%! 
String aa="",aaa="YES",as="" ;
boolean res=false ,ff=false;
  
Connection con;
Statement st;
ResultSet rs;
int total=0,at=0; 
%>

<%
 
try
{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
catch(ClassNotFoundException as){}

	try
	{
	con=DriverManager.getConnection("jdbc:odbc:real");
	
	st=con.createStatement();
	rs=st.executeQuery("SELECT * from biddingdb where available='YES' ");
	res=false;
	total=0;
	while(rs.next())
	{
	 total++;
	}
	%>

	

	<tr>
	<td colspan="2" valign="top" ><table width=1248 height="119" border="1" >
      <tr >
        <td width="1091" height="43" ><font color="#000000"><b>Total Results: <%=total%></b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font color="#000000"><b>Freehold Property Search Result</b></font>&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<font color="#FF0000"><b></b> </font>&nbsp;&nbsp;		</td>
        <td width="166" ><!-- Begin Free-Buttons.org -->
<style>#web-buttons-idmk7np a{display:block;color:transparent;} #web-buttons-idmk7np a:hover{background-position:left bottom;}a#web-buttons-idmk7npa {display:none}</style>
<table id="web-buttons-idmk7np" width=0 cellpadding=0 cellspacing=0 border=0><tr>
<td style="padding-right:0px" title ="    ">&nbsp;</td>
</tr></table>
 
<!-- End Free-Buttons.org -->&nbsp;</td>
      </tr>
    </table></td></tr>

	
	
	<td width="1250">
	<table width="1250" border="1" >
      <tr>
        <th width="221" height="28" scope="col"><font color="#000000">BID PRODUCT ID </font></th>
        <th width="389" height="28"scope="col"><font color="#000000">IMAGE</font></th>
        <th width="618" height="28"scope="col"><font color="#000000">PRODUCT DESCRIPTION </font> </th>
         
      </tr>
</table></td>

	
	<%
	int code=0;
    rs=st.executeQuery("SELECT  * from biddingdb where available='YES' ");
	res=false;
	while(rs.next())
	{
	 code=rs.getInt(1);
	 //out.println(code);
	 res=true;
	  
	 //as=rs.getString("productdetails");
	//out.println(as+""+at);
	%>
	<td width="1250"><table width="1250" border="1" >
		<tr>
        <th width="221" height="28" scope= "col"><font color="#000000"><%=code%></font></th> 
        
        <th width="388" height="28"scope="col"><img src="<%=rs.getString("image")%>"  height="100" width="100"></th>
        <th width="446" height="28"scope="col"><font color="#000000"><%=rs.getString("productdetails")%></font></th>
		<th width="167"  height="28"scope="col">
		<form method="post" action="h5next.jsp">
		<input type="hidden" value="<%=code%>" name="bidprid">
		<input type="image" src="Placebid.jpg">	
		</form>		</th>
      </tr></table></td>

	<%
	}
	if(res==false)
	{%>
	<h3> <font color="#FF0000">No Result Found</font> </h3>
	<%}
	
	}
	catch(SQLException as)
	{out.println(as);}%>
	<table width="808" border="0"  align="center" cellpadding="5" cellspacing="5" class="ani">
<tr>
<td width="788"  > Copyright @ 2013 Exclusivehomes.com - Real Estate India - Property - Properties in India - All Rights Reserved. </td>
</tr>
</table>
</body>
</html>