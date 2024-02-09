<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Accessor Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style9 {font-size: 20px}
.style10 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style12 {color: #FF0000}
.style13 {font-size: 30px}
.style14 {
	font-family: Georgia, "Times New Roman", Times, serif;
	color: #1e5381;
	font-size: 25px;
}
.style15 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style15">data leakage detection</a></h1>
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
          <h2 align="center" class="style13"> Welcome to Data Accessor Main : <span class="style12"> <%=application.getAttribute("dr")%> </span></h2>
		  
		   <br> 
  <span class="style11">Your Group::</span><span class="style12"><%=application.getAttribute("ugroup1")%><br />
  </span><br> 
  <span class="style11">Your Group Key::</span><span class="style12"><%=application.getAttribute("gkey1")%></span></span></h3>
		  
          <p align="center" class="style13"><img src="images/Receiver.jpg" width="480" height="203" /></p>
        </div>
      </div>
      <div class="sidebar">
	  <p class="style9">&nbsp;</p>
        <div class="gadget">
          <p class="star style14">Data Accessor Menu</p>
          <div class="clr"></div>
          <ul class="sb_menu style12">
            <li><strong><a href="dr_profile.jsp">My Profile</a></strong></li>
			<li><strong><a href="dr_all_data.jsp">View All Authorized Data</a></strong></li> 
			<li><strong><a href="dr_search_data.jsp">Search Data</a></strong></li>
			<li><strong><a href="dr_dec_req.jsp">Request Decrypt Public Key </a></strong></li>
			<li><strong><a href="dr_sk_req.jsp">Request Secret Key </a></strong></li>
			<li><strong><a href="dr_download_file.jsp"> Download the File </a></strong></li>
            <li><strong><a href="dr_login.jsp">Log Out</a></strong></li>
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
