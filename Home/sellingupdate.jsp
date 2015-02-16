<%@ page import="java.sql.*; "%>

<html>
<head>
<title>DATABASE-user detail</title>
</head>
<body background="bac.jpg">
<%!
String  pn="",pr="",pi="",pt="",ty="",av="",cy="",ns="",pare="",dealty="",price="";
int nuro=0,p=0;
 
int id=0;
String pid="",ppid="";
Statement st;
ResultSet rs;
Connection con;
%>
<%  
pn=request.getParameter("proname");
pr=request.getParameter("Proprieter");
/*pi=request.getParameter("propimage");*/
pt=request.getParameter("proptpe");
ty=request.getParameter("typ");
av=request.getParameter("room");

cy=request.getParameter("City");
ns=request.getParameter("landmark");
pare=request.getParameter("area");
nuro=Integer.parseInt(pare);
dealty=request.getParameter("area3");
price=request.getParameter("pric");
p=Integer.parseInt(price);

  try
      {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
  catch(ClassNotFoundException aa)
	{out.println(aa);}
  try
      {
	 con=DriverManager.getConnection("jdbc:odbc:real");
     	 st=con.createStatement();
		 
		 rs=st.executeQuery("SELECT max(code) FROM propertydetail");
		if(rs.next())
		{id=rs.getInt(1);}
		
		if(id==0)
		{id=100;}
		id++;
		
		pid=String.valueOf(id);
		ppid=pid;
		session.setAttribute("pid",ppid);
	 st.executeUpdate("insert into propertydetail values("+id+",'"+pn+"','"+pr+"','','"+pt+"','"+ty+"',"+av+",'"+cy+"','"+ns+"',"+nuro+",'"+dealty+"',00,"+p+",'FOR SALE')  ");  
	%>
	<form method="post" action="uploadimage.jsp" enctype="multipart/form-data">
	<center>
	<table border=0 width=100 height=300>
		<tr>
	
			<td>Property Image <input type="file" name="mm" ></td> 
		</tr>
		<tr>
			<td>
			</td>
			<td>
			<input type=submit value="UPLOAD">
			</td>
		</tr>
	</table>
	</center>
</form>

	 	<%

      }	
  catch(SQLException aas)
	{out.println(aas);}

 
%>


</body>
</html>