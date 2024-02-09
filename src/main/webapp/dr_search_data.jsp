<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script type="text/javascript" language="javascript">
function valid()
{
var na1=document.s.keyword.value;
if (na1=="")
{
alert("Please Enter Keyword");
document.s.keyword.focus();
return false;
}

}      
</script>
<style type="text/css">
<!--
.style1 {
	color: #1e5381;
	font-family: "Times New Roman", Times, serif;
	font-size: 25px;
}
.style2 {font-size: 15px}
.style4 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #000000;
}
.style5 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style5">data leakage detection</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li><a href="cs_login.jsp">Cloud Service Provider</a></li>
          <li><a href="au_login.jsp">Trusted Authority</a></li>
          <li><a href="do_login.jsp">Data Owner</a></li>
          <li class="active"><a href="dr_login.jsp">Data Accessor</a></li>
        </ul>
      </div>
      <div class="style10"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="style10"></div>
      </div>
      <div class="style10"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style9">
        <div class="article">
          <h2 align="center" class="style13"> Search Authorized Data </h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
<form name="s" action="dr_search_data1.jsp" method="post" onSubmit="return valid()"  ons target="_top">   

                  <TABLE ALIGN="center" >
				  
                    <TR>
                      <TD width="182"><div align="center">
                        <div align="right">
                          <div align="center" class="style3 style9 style10 style13 style14 style15 style4">Enter Fuzzy Keyword</div>
                        </div>
                      </div></TD>
					  
                      <TD width="144"><div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="173"><INPUT name="submit" TYPE="submit" VALUE="GO"/></TD>
                    </TR>
					
                    <TR>
					  <td></td>
                      <TD COLSPAN="3"><div>(Search is Based on Data Content)</div></TD>
                    </TR>
                  </TABLE>
                <P>&nbsp;</P>
</form>		  
		  
		  
		  
		  
		  
		  
		  
		<p>&nbsp;</p>
		<p align="right"><a href="dr_main.jsp" class="style2"> Back </a></p> 
        </div>
      </div>
      <div class="sidebar">
	  <p class="style9">&nbsp;</p>
        <div class="gadget">
          <p class="star style1">Data Accessor Menu</p>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="dr_main.jsp">Data Accessor Main</a></li>
            <li><a href="dr_login.jsp">Log Out</a></li>
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
