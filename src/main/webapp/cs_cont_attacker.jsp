<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Content Attacker</title>
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
.style1 {
	color: #1e5381;
	font-family: "Times New Roman", Times, serif;
	font-size: 25px;
}
.style2 {font-size: 15px}
.style4 {font-family: "Times New Roman", Times, serif}
.style5 {font-size: 20px}
.style7 {color: #000000}
.style8 {color: #FFFFFF}
.style9 {font-size: 24px}
.style10 {font-size: 16px}
.style11 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style9">data leakage detection</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li class="active"><a href="cs_login.jsp">Cloud Service Provider</a></li>
          <li><a href="au_login.jsp">Trusted Authority</a></li>
          <li><a href="do_login.jsp">Data Owner</a></li>
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
          <h2 align="center" class="style13"> View All Data Disseminator Attackers</h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
<table width="676" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="52" height="54" bgcolor="#FF0000"><div align="center" class="style11 style10 style4 style18 style17 style16 style15 style14"><strong>Si.No.</strong></div></td>
		   <td width="115" bgcolor="#FF0000"><div align="center" class="style11 style10 style4 style18 style17 style16 style15 style14"><strong>File Name</strong></div></td>
           <td width="74" bgcolor="#FF0000"><div align="center" class="style11 style10 style4 style18 style17 style16 style15 style14"><strong>Block</strong></div></td>
		   <td width="104" bgcolor="#FF0000"><div align="center" class="style11 style10 style4 style18 style17 style16 style15 style14"><strong><span class="style13">Disseminator</span> Name</strong></div></td>
           <td width="101" bgcolor="#FF0000"><div align="center" class="style11 style10 style4 style18 style17 style16 style15 style14"><strong>IP Address</strong></div></td>
		   <td width="110" bgcolor="#FF0000"><div align="center" class="style11 style10 style4 style18 style17 style16 style15 style14"><strong><span class="style13">Disseminated</span> Date</strong></div></td>
           <td width="104" bgcolor="#FF0000"><div align="center" class="style10 style11 style4 style18 style17 style16 style15 style14"><strong>Status</strong></div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14,s15,s16,s17,s18;
	int i=0,j=1,k=0;
	//String user = (String)application.getAttribute("do");

 try 
	{		
      	                    String query="select * from attacker_details "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);//name
								s3=rs.getString(3);//name
								s4=rs.getString(4);//mail
								s5=rs.getString(5);
								s6=rs.getString(6);//add
								s7=rs.getString(7);//dob
								/*s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);
								s11=rs.getString(11);
								s12=rs.getString(12);//
								s13=rs.getString(13);
								s14=rs.getString(14);
								s15=rs.getString(15);
								s16=rs.getString(16);
								s17=rs.getString(17);
								s18=rs.getString(18);
								*/
		
		
		%>
                    
                    <tr>
					  <td height="49" bgcolor="#CC6600"><div align="center" class="style10 style11 style13 style14 style16 style17 style19 style4 style5 style7"><%=j%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style13 style14 style16 style17 style19 style4 style5 style7"><%=s2%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style13 style14 style16 style17 style19 style4 style5 style7"><%=s3%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style13 style14 style16 style17 style19 style4 style5 style7"><%=s6%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style13 style14 style16 style17 style19 style4 style5 style7"><%=s7%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style13 style14 style16 style17 style19 style4 style5 style7"><%=s4%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style13 style14 style16 style17 style19 style4 style5 style8"><%=s5%></div></td>
	                </tr>
					  
        <%
		
	  j=j+1;}
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>
		  
		  
		  
		  
		  
		  
		  
		  
		<p>&nbsp;</p>
		<p align="right"><a href="cs_main.jsp" class="style2"> Back </a></p> 
        </div>
      </div>
      <div class="sidebar">
	  <p class="style9">&nbsp;</p>
        <div class="gadget">
          <p class="star style1">Server Menu</p>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="cs_main.jsp">Server Main</a></li>
            <li><a href="cs_login.jsp">Log Out</a></li>
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
