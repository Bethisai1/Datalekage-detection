<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud Service Provider Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}


}
</script>
<style type="text/css">
<!--
.style1 {font-family: "Times New Roman", Times, serif}
.style2 {font-size: 15px}
.style3 {color: #1e5381}
.style4 {font-size: 20px}
.style5 {font-weight: bold}
.style7 {
	font-weight: bold;
	color: #ffae00;
}
.style9 {color: #ffae00}
.style10 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style10">data leakage detection</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="cs_login.jsp"><span>Cloud Service Provider</span></a></li>
          <li><a href="au_login.jsp"><span>Trusted Authority</span></a></li>
          <li><a href="do_login.jsp"><span>Data Owner</span></a></li>
          <li><a href="dr_login.jsp"><span>Data Accessor</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Cloud Service Provider Login </h2>
          <p>&nbsp;</p>







<form name="s" action="cs_authentication.jsp" method="post" onSubmit="return valid()"  ons target="_top">  
            
    <table align="center" border="1" width="57%" height="179">
	
      <tr>
        <td width="48%" height="46" bgcolor="#333333" class="style4 style2"><span class="style4 style3 style1 style7 style9"><strong> Name </strong></span></td>
        <td width="55%" height="46" bgcolor="#333333"><input type="text"  name="userid" size="18" /></td>
      </tr>
      <tr>
        <td width="48%" height="40" bgcolor="#333333" class="style5 style2"> <span class="style4 style1 style9"><strong>Password</strong></span></td>
        <td width="55%" height="40" bgcolor="#333333"><input type="password"  name="pass" size="18" /></td>
      </tr>
      <tr>
        <td height="78" colspan="2" bgcolor="#999999"><p align="center">
            <input type="submit"  value="Login" name="B1" />
            <input type="reset" value="Reset" name="B2" />
        </td>
      </tr>
    </table>
	
</form>		  














        </div>
      </div>
      <div class="sidebar">
	  <p>&nbsp;</p>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home Page</a></li>
            <li><a href="cs_login.jsp">Cloud Service Provider</a></li>
            <li><a href="au_login.jsp">Trusted Authority</a></li>
            <li><a href="do_login.jsp">Data Owner</a></li>
            <li><a href="dr_login.jsp">Data Accessor</a></li>
			<li><a href="attack.jsp">Attacker</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
