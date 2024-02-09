<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User SK Requests</title>
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
.style16 {font-family: "Times New Roman", Times, serif}
.style17 {font-size: 20px}
.style18 {color: #0000FF}
.style19 {color: #000000}
.style20 {font-size: 15px}
.style21 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 30px;
	color: #1e5381;
}
.style22 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style22">data leakage detection</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html">Home Page</a></li>
          <li><a href="cs_login.jsp">Cloud Service Provider</a></li>
          <li class="active"><a href="au_login.jsp">Trusted Authority</a></li>
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
          <h2 align="center" class="style15"> View Secret Key Requsest from User and Generate Key </h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
		  
<table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="51" height="54" bgcolor="#CCCC00"><div align="center" class="style10 style8 style14 style15 style9 style16 style17 style18">Si.No.</div></td>
		   <td width="94" bgcolor="#CCCC00"><div align="center" class="style10 style8 style14 style15 style9 style16 style17 style18">Data User</div></td>
           <td width="97" bgcolor="#CCCC00"><div align="center" class="style10 style8 style14 style15 style9 style16 style17 style18">File Name</div></td>
           <td width="118" bgcolor="#CCCC00"><div align="center" class="style10 style8 style14 style15 style9 style16 style17 style18">Requested Date</div></td>
		   <td width="184" bgcolor="#CCCC00"><div align="center" class="style10 style8 style14 style15 style9 style16 style17 style18">Status</div></td>
		 </tr>

<%@ include file="connect.jsp" %>                      
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from user_sk_req "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() ) 
			                {
				                 i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
		
		
		%>
                    
                    <tr>
                      <td height="63" bgcolor="#CC6600"><div align="center" class="style10 style11 style8 style13 style14 style16 style17 style19"><%=j%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style8 style13 style14 style16 style17 style19"><a href="au_dr_profile.jsp?user=<%=s2%>&type=<%="three"%>" class="style10 style11 style8 style13 style14 style16 style17 style19"><%=s2%></a></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style8 style13 style14 style16 style17 style19"><%=s3%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style10 style11 style8 style13 style14 style16 style17 style19"><%=s4%></div></td>
					  <%
						if(s5.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td bgcolor="#CC6600"><div align="center" class="style10 style11 style8 style13 style14 style16 style17 style19">
               <p><a href="au_user_sk_req1.jsp?id=<%=i%>">Requested</a></p>
				<p>(Click Above to Generate Key)</p>
				 </div></td>
              <%
						}
						else
						{
						%>
              <td width="52" bgcolor="#CC6600"><div align="center" class="style10 style11 style8 style13 style14 style16 style17 style19">
                    <%=s5%>
                </div></td>
              <%
						}
						%>
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
		<p align="right"><a href="au_main.jsp" class="style20"> Back </a></p> 
        </div>
      </div>
      <div class="sidebar">
	  <p class="style9">&nbsp;</p>
        <div class="gadget">
          <p class="star style14 style21">Trusted Authority Menu</p>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="au_main.jsp">Trusted Authority Main</a></li>
            <li><a href="au_login.jsp">Log Out</a></li>
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
