<%@ page import="java.sql.*; "%>

<html>
<head>
<title>DATABASE-user detail check for valis user</title>
</head>
<body>
<%!
String em="",pw="" ,a="",name="";
 
Statement st;
ResultSet rs;
Connection con;
%>
<%  
 
em=request.getParameter("email");
pw=request.getParameter("password");
 
 
    try
                {Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");}
               catch(ClassNotFoundException aa)
	{out.println(aa);}
    try
     	 {
	 con=DriverManager.getConnection("jdbc:odbc:real");
     	 st=con.createStatement();
	 rs=st.executeQuery("select * from userdetail where emailid='"+em+"' and password='"+pw+"' ");
 	 if(rs.next())
	   {   
                   a=rs.getString("nam");
	name=a;
	session.setAttribute("name",a);
	session.setAttribute("email",em);
                %>  <jsp:forward page="/rehome.jsp"/>  <%  }
   	   
	else
 	   {%>     
                      	
			<script language="javascript" >
			 alert("Invalid User");
			 window.location.replace('index.html');
			 </script>

	 <%     }
                }
  catch(SQLException aas)
               {out.println(aas);}

 
%>


</body>
</html>