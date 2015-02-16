<%@ page import ="java.sql.*;"%>
<html>

<head><title>bid transaction database update</title></head>
<body>

<%!
String a="",ema="";
int  bidpid=0,bidtranid=0,bidam=0;

Connection con;
Statement st;
ResultSet rs;

%>
<%
a=(String)session.getAttribute("bidprid");
bidpid=Integer.parseInt(a);
//out.println(bidpid);
ema=(String)session.getAttribute("email");
//out.println(ema);
bidam=Integer.parseInt(request.getParameter("bidamout"));
//out.println(bidam);

try
{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
catch(ClassNotFoundException as){}


	try
	{
	con=DriverManager.getConnection("jdbc:odbc:real");
	
	st=con.createStatement();
	rs=st.executeQuery(" select max(bidtransid) from bidtransaction ");
	if(rs.next())
	{
		 bidtranid=rs.getInt(1);
		  if(bidtranid==0)
	  		{bidtranid=555;}
	  
	  bidtranid++;
	}
	//out.println("ok"+bidtranid);

	//out.println("insert into bidtransaction values("+bidpid+","+bidtranid+",'"+ema+"',"+bidam+")  ");
	//st.executeUpdate("insert into bidtransaction values(11336,1000412,'ema',9999339)  ");
	st.executeUpdate("insert into bidtransaction values("+bidpid+","+bidtranid+",'"+ema+"',"+bidam+")  ");


	//out.println("hello");	

	%>
	
	 <%
	}
	catch(SQLException as)
	{out.println(as);}
//<jsp:forward page="/h5.jsp"/>


%>
<script language="javascript">
			 alert("You are Bid Amount is Placed. Thank You...");
			 window.location.replace('h5.jsp');
			 </script>




</body>
</html>