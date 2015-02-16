<html>

<head>
<title>Bank Page Check</title>
 
</head>
<body>
<%! 
String a="",b="",c="Debit Card";
 %>

<%
a=request.getParameter("sel");
b=request.getParameter("via");
out.println(a) ;
out.println(b) ;


 int x=b.length();
  int y=a.length();
 
 if(x==10)
{ %><jsp:forward page="/debit.html"/><%}
else if(x==11)
{ %><jsp:forward page="/credit.html"/><%}
else if(x==14 && y==16)
{ %><jsp:forward page="/banksbi.html"/><%}
else if(x==14 && y==10)
{ %><jsp:forward page="/banlicici.html"/><%}
else if(x==14 && y==9)
{ %><jsp:forward page="/bankaxis.html"/><%}
else if(x==14 && y==13)
{ %><jsp:forward page="/bankboi.html"/><%}
else if(x==14 && y==20)
{ %><jsp:forward page="/bankpnb.html"/><%}
else if(x==14 && y==11)
{ %><jsp:forward page="/bankind.html"/><%}
else if(x==14 && y==12)
{ %><jsp:forward page="/bankciti.html"/><%}

 
  
%>

 

</body>
</html>