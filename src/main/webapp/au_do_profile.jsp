<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Profile</title>
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
.style13 {font-size: 30px}
.style24 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 30px;
	color: #1e5381;
}
.style29 {font-family: "Times New Roman", Times, serif; color: #000000; }
.style30 {font-family: "Times New Roman", Times, serif; color: #0000FF; }
.style31 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style31">data leakage detection</a></h1>
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
          <h2 align="center" class="style13"> Data Owner Profile </h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
		  
<table width="576" height="395" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            
			<%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=request.getParameter("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from d_owners where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s2=rs.getString(2);//name
								s4=rs.getString(4);//email
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//dob
								s8=rs.getString(8);
								s9=rs.getString(9);
								s10=rs.getString(10);//loc
								s11=rs.getString(11);//image
								s12=rs.getString(12);
							    s13=rs.getString(13);
								
								
								
								
					%>
           <tr>
              <td width="200" rowspan="6"><input  name="image" type="image" src="do_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" /></td>
            </tr>
            
			<tr>
              <td width="146" height="40" bgcolor="#CCCC00"><span class="style30"> Name </span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s2);%> </span></td>
            </tr>
			
			<tr>
              <td width="146" height="40" bgcolor="#CCCC00"><span class="style30"> Group </span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s4);%> </span></td>
            </tr>
			
            <tr>
              <td width="146" height="40" bgcolor="#CCCC00"><span class="style30">E-Mail</span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s5);%> </span></td>
            </tr>
            <tr>
              <td width="146" height="40" bgcolor="#CCCC00"><span class="style30">Mobile</span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s6);%> </span></td>
            </tr>
			
            <tr>
			
			
            <tr>
              <td height="47"></td>
			  <td width="146" height="40" bgcolor="#CCCC00"><span class="style30">Date of Birth</span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s8);%> </span></td>
            </tr>
            <tr>
              <td height="47"></td>
			  <td width="146" height="40" bgcolor="#CCCC00"><span class="style30">Address</span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s7);%> </span></td>
            </tr>
            <tr>
              <td height="44"></td>
			  <td width="146" height="40" bgcolor="#CCCC00"><span class="style30">Gender</span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s9);%> </span></td>
            </tr>
            <tr>
              <td height="45"></td>
			  <td width="146" height="40" bgcolor="#CCCC00"><span class="style30">Pincode</span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s10);%> </span></td>
            </tr>
            <tr>
              <td height="48"></td>
			  <td width="146" height="40" bgcolor="#CCCC00"><span class="style30">Status</span></td>
              <td width="222" bgcolor="#CC6600"><span class="style29"> <%out.println(s13);%> </span></td>
            </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>		  
		  
<p>&nbsp;</p>		  
<%
String type=request.getParameter("type");		  
if(type.equalsIgnoreCase("one"))
		{
		%> <p align="right"><a href="au_all_do.jsp" class="style20"> Back </a></p>
<%
		}
		if(type.equalsIgnoreCase("two"))
		{
		%><p align="right"><a href="au_enc_req.jsp" class="style20">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("three"))
		{
		%><p align="right"><a href="au_sk_req.jsp" class="style12">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("four"))
		{
		 
		%><p align="right"><a href="auu.jsp" class="style12">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("five"))
		{
		%><p align="right"><a href="sss.jsp" class="style12">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("six"))
		{
		%><p align="right"><a href="sss.jsp" class="style12">Back</a></p>
<%
		}
		if(type.equalsIgnoreCase("seven"))
		{
		%><p align="right"><a href="sss.jsp" class="style12">Back</a></p>
<%
		}
        if(type.equalsIgnoreCase("eight"))
		{
		%><p align="right"><a href="ccc.jsp" class="style12">Back</a></p>
<%
		}
        if(type.equalsIgnoreCase("nine"))
		{
		%><p align="right"><a href="ccc.jsp" class="style12">Back</a></p>
<%
		}

%>		  
		  
		  
		  
		  
		  
		  
		  
		
        </div>
      </div>
      <div class="sidebar">
	  <p class="style9">&nbsp;</p>
        <div class="gadget">
          <p class="star style24">Trusted Authority Menu</p>
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
