<%@ page import ="java.sql.*;"%>
<html>
<head>
<title>Payment complete and database update</title>


 

<%! 
 
 
String prodid="",ema="",ptype="",dealtype="";
long productid=0,pric=0,tid=0;
String aa="",bb="";
Connection con;
Statement st;
ResultSet rs;
%>

<%
 prodid=(String)session.getAttribute("pid");
 ema=(String)session.getAttribute("email");
 out.println(prodid);
 productid=Long.parseLong(prodid);
 out.println(productid);
 out.println(ema);
 
try
{Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
catch(ClassNotFoundException as){}

	try
	{
	con=DriverManager.getConnection("jdbc:odbc:real");
	st=con.createStatement();
	
	rs=st.executeQuery("select * from  propertydetail where  code="+productid+" ") ;
	if(rs.next())
	{
	ptype=rs.getString("propertytype");
	dealtype=rs.getString("dealtype");
	pric=rs.getLong("sellprice");
	
	out.println(ptype);out.println(dealtype); out.println(pric);
	}
	
	rs=st.executeQuery(" SELECT max(transid) FROM dealingdetail") ;
	if(rs.next())
	{
	  tid=rs.getLong(1);
	  if(tid==0)
	  {tid=11111;}
	  
	  tid++;
	   
	 }
	 aa=String.valueOf(tid);
	 bb=aa;
session.setAttribute("aa",bb);
	out.println(tid);
st.executeUpdate(" update propertydetail set availability='SOLD OUT' where  code="+productid+" ") ;
st.executeUpdate("INSERT INTO dealingdetail VALUES ('"+ema+"',"+tid+","+productid+",'"+ptype+"','"+dealtype+"',"+pric+",'0','0','0') ");

//out.println("INSERT INTO dealingdetail VALUES ('"+ema+"',"+tid+","+productid+",'"+ptype+"','"+dealtype+"',"+pric+",'0','0','0') ");	


	/**/	%>
	<jsp:forward page="/transactioncomplete.jsp"/>
   
     <%
	 
	
	}catch(SQLException asd){out.println(asd);}
	%>
          
 
</body>
</html>
 