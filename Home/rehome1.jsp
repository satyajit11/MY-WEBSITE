<html>
<head>

<link type="text/css" rel="stylesheet" href="lightbox-form.css">
<script src="lightbox-form.js" type="text/javascript"></script>
<link href="style2.css" rel="stylesheet" type="text/css">

<link href="mystyle.css" rel="stylesheet" type="text/css">

<link type="text/css" rel="stylesheet" href="../prjct/e-auction project/lightbox-form.css">
<script src="../prjct/e-auction project/lightbox-form.js" type="text/javascript"></script>
<link href="../prjct/e-auction project/mystyle.css" rel="stylesheet" type="text/css">








<!-- Start css3menu.com HEAD section -->
<link rel="stylesheet" href="home_files/css3menu11/style.css" type="text/css" />
<link rel="stylesheet" href="home_files/css3menu10/style.css" type="text/css" />
<link rel="stylesheet" href="home_files/css3menu9/style.css" type="text/css" />
<link rel="stylesheet" href="home_files/css3menu12/style.css" type="text/css" />
<!-- End css3menu.com HEAD section -->

</head>

<script language="javascript">
var x=new Array();
x[0]="6.jpg";
x[1]="46.jpg";
x[2]="7.jpg";
x[3]="8.jpg";
x[4]="70.jpg";
x[5]="37.jpg";
var i=0,k=0;
function change()
{
document.getElementById('bd').background=x[i];
i++;
k++;
if(i==6)
i=0;
setTimeout("change();",3000);

}

</script>
<body onLoad="change();" id='bd' link="#BC1D28" class="">

<%!String a="";%>

<%
 
a=(String)session.getAttribute("name");
%>



<div id="filter2"></div>
<div id="box2">
<form action="" method="post" name="form2" >
<table bgcolor="#00FFFF">
<tr><td>EmailId</td><td><input type="text" name="email"></td></td></tr>
 <tr><td>Password</td><td><input type="password" name="password"></td>  </tr>
 
<tr><td>&nbsp;</td></tr> 
<tr><td>&nbsp;</td><td><input type="submit" value="Submit"></td></tr>  
<tr><td>&nbsp;</td></tr>

<tr><td><input name="reset" type="reset" value="Clear"/></td>
<td><input type="button" name="cancel" value="Cancel" onClick="closebox2()"/></td></tr>
</table>
</form>
</div>

<div id="filter"></div>
<div id="box">
<form action="updateuserdetail.jsp" method="post" name="form">
<table bgcolor="#00FFFF">
<tr><td>Name</td><td><input type="text" name="name"></td></tr>
<tr><td>EmailId</td><td><input type="text" name="email"></td></tr>
 <tr><td>Password</td><td><input type="password" name="password"></td>  </tr>
 <tr><td>ConfirmPassword</td><td><input type="password" name="conpassword"></td>  </tr>
<tr><td>Address</td><td><input type="text" name="address"></td></tr>
<tr><td>City</td><td><input type="text" name="city"></td></tr>
<tr><td>State</td><td><input type="text" name="state"></td></tr>
<tr><td>Pincode</td><td><input type="text" name="pincode"></td></tr>
<tr><td>Country</td><td><input type="text" name="country"></td></tr>
<tr><td>Phone</td><td><input type="text" name="phone"></td></tr>
<tr><td>EmailAlert</td><td><input type="radio" name="rad">Enable <input type="radio" name="rad">Disable</td></tr>

 
 
 
<tr><td>&nbsp;</td><td><input type="submit" value="Submit"></td></tr>  
<tr><td>&nbsp;</td></tr>

<tr><td><input name="reset" type="reset" value="Clear"/></td>
<td><input type="button" name="cancel" value="Cancel" onClick="closebox()"/></td></tr>
</table>
</form>
</div>

<div id="filter3"></div>
<div id="box3">
<form action="" method="post" name="form3" >
<table bgcolor="#00FFFF">
<tr><td align="center"><img src="" width="90" height="110"></td></tr>
<tr><td></tr></td>  
<tr><td></tr></td>  
 
<tr><td>Bidnt</td><td><input type="text" name="bidamount"></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="Submit"></td></tr>  
<tr><td>&nbsp;</td></tr>

<tr><td><input name="reset" type="reset" value="Clear"/></td>
<td><input type="button" name="cancel" value="Cancel" onClick="closebox3()"/></td></tr>
</table>
</form>
</div>



<table background="br.png" border=1 width="100%" cellspacing="0" height="100%" align="center">
<tr>
<td height="78" colspan="2"><img src="logo.jpg" valign="top"  >
<table><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>WELCOME&nbsp;&nbsp;<%=a%>&nbsp;You are Registered.</td></tr></table>
  </td>
</tr>

<tr>
<td height="82" colspan="2">

<table border="0">
<tr>
<td valign="top" height="120">

<!-- Start css3menu.com BODY section id=12 -->
<ul id="css3menu12" class="topmenu">
	<li class="topfirst"><a href="home.html" title="HOME" style="height:16px;line-height:16px;">HOME</a></li>
	<li class="topmenu"><a href="property1.html" title="PROPERTY" style="height:16px;line-height:16px;">PROPERTY</a></li>
	<li class="topmenu"><a href="#" title="SELLING" style="height:16px;line-height:16px;"><span>SELLING</span></a>
	<ul>
		<li class="subfirst"><a href="#" title="HOME FOR SELL">For Sale</a></li>
		<li><a href="#" title="HOME FOR BIDDING">For Bidding</a></li>
	</ul>
	</li>
	<li class="topmenu"><a href="" title="REQUIREMENT" style="height:16px;line-height:16px;"><span>REQUIREMENT</span></a>
	<ul>
		<li class="subfirst"><a href="listyourproperty.html" title="REQUIREMENT FOR SALE">For Sale</a></li>
		<li><a href="" title="REQUIREMENT FOR BUY">For Buy</a></li>
		<li><a href="rentalpropertysearch.html" title="REQUIREMENT FOR RENT">For Rent</a></li>
	</ul>
	</li>
	<li class="toplast"><a href="h5.html" title="BIDDING" style="height:16px;line-height:16px;">BIDDING</a></li>
</ul>


<p style="display:none"><a href="http://css3menu.com/">CSS Buttons with Images Css3Menu.com</a></p>
<!-- End css3menu.com BODY section --></td>

<td width="640">	<a href="../prjct/e-auction project/help1.html">       </a></td>	
  
<td width="208" height="120" valign="top">
  
  
<!-- Start css3menu.com BODY section id=10 -->
<ul id="css3menu10" class="topmenu">
	<li class="topfirst" onClick="openbox2('form2', 1)" onMouseOver="this.style.cursor='pointer'" style="color:#FFF"><a href="#" title="SIGN IN" style="height:16px;line-height:16px;">SIGN IN</a></li>
	<li class="topmenu"   onClick="openbox('form', 1)" onMouseOver="this.style.cursor='pointer'" style="color:#FFF"><a href="#" title="REGISTER" style="height:16px;line-height:16px;">REGISTER</a></li>
	<li class="toplast"  onClick="openbox3('form3', 1)" onMouseOver="this.style.cursor='pointer'" style="color:#FFF"><a href="#" title="SEARCH" style="height:16px;line-height:16px;">SEARCH</a></li>
</ul>


<p style="display:none"><a href="http://css3menu.com/">CSS Buttons with Images Css3Menu.com</a></p>
<!-- End css3menu.com BODY section --></td>
</tr>
</table></td>
</tr>


<tr>
<td valign="top" width="21">&nbsp;</td>
	<td width="1293" height="500" align="center" valign="top"><br>

     <p style="display:none"><a href="http://css3menu.com/">CSS input Type Button Css3Menu.com</a></p>
    <!-- End css3menu.com BODY section -->

<!-- Start css3menu.com BODY section id=9 -->
<ul id="css3menu9" class="topmenu">
	<li class="topfirst"><a href="CONTACTUS.html" title="CONTACT US" style="width:74px;">CONTACT US</a></li>
	<li class="topmenu"><a href="a1.html" title="OFFICES" style="width:74px;">OFFICES</a></li>
	<li class="topmenu"><a href="associates1.html" title="ASSOCIATE" style="width:74px;">ASSOCIATE</a></li>
	<li class="toplast"><a href="a3.html" title="OUR STORY" style="width:74px;">OUR STORY</a></li>
</ul>


<p style="display:none"><a href="http://css3menu.com/">CSS Radio Button Css3Menu.com</a></p>
<!-- End css3menu.com BODY section --></td>
</tr>

<tr>
<td valign="bottom"><hr/></td>
<td valign="bottom"><hr/></td>
</tr>

<tr>
<td></td>

<td align="center">
<!--start of bottom layer-->
<table border="0" width="60%">
<tr>
<td>
<center>
<!--start 1st series-->
<table border="0" cellpadding="5" cellspacing="5" width="80%" class="ani">
<tr>
<td align="center" width="13%"><b>Offices</b></td>
<td width="1%">|</td>
<td align="center"><b>Associates</b></td>
<td width="1%">|</td>
<td align="center"><b>Chat With Us</b></td>
<td width="1%">|</td>
<td align="center"><b>Share Your Feedback</b></td>
<td width="1%">|</td>
<td align="center"><b>Our Story</b></td>
</tr>
</table>

<!--start 2nd series-->
<table border="0" cellpadding="0" cellspacing="5" width="230" class="ani">
<tr>
<td align="center"><b>Follow Us On</b></td>
<td width="30" align="center"><a href="http://www.facebook.com" target="_blank"><img src="facebook-icon.png"/></a><td>
<td width="30" align="center"><a href="http://www.twitter.com" target="_blank"><img src="twitter-icon.png"/></a><td>
<td width="30" align="center"><a href="http://www.plus.google.com" target="_blank"><img src="images.jpg" width="22" height="22"></a><td>
</tr>
</table>

<!--start 3rd series-->
<table border="0" cellpadding="5" cellspacing="5" class="ani">
<tr>
<td><b>Download SIR moblie</b></td>
<td><img src="mobile.png"/><td>
</tr>
</table>

<!--for giving a line-->
<table border="0" width="80%">
<tr>
<td><hr/></td>
</tr>
</table>

<!--start 4th series-->
<table border="0" cellpadding="5" cellspacing="5" class="ani">
<tr>
<td><b>Copyright ? 2006-2013. All Rights Reserved.</b></td>
</tr>
</table>

<!--start 5th series-->
<table border="0" cellpadding="5" cellspacing="5" width="60%" class="ani">
<tr>
<td align="center"><b>View Full Disclaimer</b></td>
<td width="1%">|</td>
<td align="center"><b>Privacy Policy</b></td>
<td width="1%">|</td>
<td align="center"><b>Terms of Use</b></td>
<tr>
</table>
</center></td>
</tr>
</table>
<!--end of bottom layer--></td>
</tr>
</table>

 <table width="756" border="0"  align="center" cellpadding="5" cellspacing="5" class="ani">
<tr>
<td width="695"  > Copyright @ 2013 Exclusivehomes.com - Real Estate India - Property - Properties in India - AllRightsReserved. </td>
</tr>
</table>

</body>
</html>