<%@ page import="java.sql.*; "%>

<html>
<head>
<title>DATABASE-user detail</title>
</head>
<body>
<%!
String  nm="",em="",pw="",cpw="",ad="",ci="",sta="",pin="",co="",ph="",ea="";
 
String hb="";
Statement st;
ResultSet rs;
Connection con;
%>
<%  
 nm=request.getParameter("name");
em=request.getParameter("email");
pw=request.getParameter("password");
cpw=request.getParameter("conpassword");
ad=request.getParameter("address");
ci=request.getParameter("city");
 sta=request.getParameter("state");
pin=request.getParameter("pincode");
co=request.getParameter("country");
ph=request.getParameter("phone");
ea=request.getParameter("rad"); 
%>
<%
  try
      {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
  catch(ClassNotFoundException aa)
	{out.println(aa);}
  try
      {
	 con=DriverManager.getConnection("jdbc:odbc:real");
     	 st=con.createStatement();
	rs=st.executeQuery("select * from  userdetail where  emailid='"+em+"' ");
            if(rs.next())
             {%>
			 <script language="javascript">
			 alert("You are already registered");
			 window.location.replace('home.html');
			 </script>
                     
             <%}
              else
             {
	st.executeUpdate("insert into userdetail values('"+nm+"','"+em+"','"+pw+"','"+cpw+"','"+ad+"','"+ci+"','"+sta+"','"+pin+"','"+co+"','"+ph+"','"+ea+"')  ");
	 session.setAttribute("name",nm);
	 session.setAttribute("email",em);
	%>
	<jsp:forward page="/rehome.jsp"/>	 
	<%}

      }	
  catch(SQLException aas)
	{out.println(aas);}

 
%>


</body>
</html>