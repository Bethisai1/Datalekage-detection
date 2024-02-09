<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Select File</title>
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
var n1=document.s.name.value;
if(n1=="-------------Select-------------")
 {
  alert("Please Select Name");
  document.s.name.focus();
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
.style3 {
	font-family: "Times New Roman", Times, serif;
	font-size: 25px;
	color: #000000;
}
.style4 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style4">data leakage detection</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li><a href="cs_login.jsp">Cloud Service Provider</a></li>
          <li><a href="au_login.jsp">Trusted Authority</a></li>
          <li class="active"><a href="do_login.jsp">Data Owner</a></li>
          <li><a href="dr_login.jsp">Data Accessor</a></li>
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
          <h2 align="center" class="style13"> Select File to Be Uploaded </h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
		  
<form name="s" action="do_upload_file1.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
          
                        
						<p align="center"> <span class="style6 style3">
						  <label for="name">  Select File  </label>
						  </span> </p>
						<p align="center">
                          <select id="s1" name="name" class="text" style="width:170px">
                            <option>-------------Select-------------</option>

<%@ include file="connect.jsp" %>
<%
  String user = (String)application.getAttribute("do");
  String s1="";

                            String query2 ="select fname from enc_key_req where downer='"+user+"' "; 
						   	Statement st2 =connection.createStatement();
						   	ResultSet rs2 =st2.executeQuery(query2);
					   		while ( rs2.next() ) 
			                {
							  s1 = rs2.getString(1);

%>							
                            <option><%=s1%></option>
                          
						  <%}%>
						  </select>
                        </p>
						
                        
                        
                        <p align="center"><br />
                            <input name="submit" type="submit" value="Continue" />
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
</form>
		  
		  
		  
		  
		  
		  
		  
		<p>&nbsp;</p>
		<p align="right"><a href="do_main.jsp" class="style2"> Back </a></p> 
        </div>
      </div>
      <div class="sidebar">
	  <p class="style9">&nbsp;</p>
        <div class="gadget">
          <p class="star style1">Data Owner Menu</p>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="do_main.jsp">Data Owner Main</a></li>
            <li><a href="do_login.jsp">Log Out</a></li>
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
