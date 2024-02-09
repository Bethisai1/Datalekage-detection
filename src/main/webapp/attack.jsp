<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Attacker</title>
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
var na1=document.s.fname.value;
if (na1=="")
{
alert("Enter File Name");
document.s.fname.focus();
return false;
}

var na1=document.s.bname.value;
if (na1=="-------------Select-------------")
{
alert("Select Block");
document.s.bname.focus();
return false;
}

}      
</script>

<style type="text/css">
<!--
.style4 {
	font-size: 20px;
	font-family: "Times New Roman", Times, serif;
	color: #0000FF;
}
.style8 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style3 style8">data leakage detection</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="cs_login.jsp"><span>Cloud Service Provider</span></a></li>
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
          <h2 align="center"> Enter Block Name </h2>
          <p>&nbsp;</p>






<form name="s" action="attack1.jsp" method="post" onSubmit="return valid()"  ons target="_top">
    
	<table width="502" border="1" align="center" cellspacing="0" cellpadding="10">
    
	  <tr>
        <td width="219" bgcolor="#99CCCC"><div align="left" class="style4 style12">File Name :- </div></td>
        <td width="237" bgcolor="#CCCC00"><input name="fname" type="text" id="p1" size="20" /></td>
      </tr>
	  
	  <tr>
        <td width="219" bgcolor="#99CCCC"><div align="left" class="style4 style12">Block :- </div></td>
        <td width="237" bgcolor="#CCCC00">
		            <select id="s1" name="bname" class="text" style="width:170px">
                      <option>-------------Select-------------</option>
                      <option>Block-1</option>
                      <option>Block-2</option>
					  <option>Block-3</option>
					  <option>Block-4</option>
                    </select>
		</td>
      </tr>
      
      <tr>
        <td></td>
        <td><input type="submit" name="Submit" value="Attack" /></td>
      </tr>
    </table>
</form>
  













        <p>&nbsp;</p>
		<p align="right"><a href="index.html" class="style6">Back</a></p>
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
