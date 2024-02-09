<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Verification Status</title>
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
.style4 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #0000FF;
}
.style5 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #FF0000;
}
.style6 {font-size: 20px}
.style7 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style7">data leakage detection</a></h1>
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
          <h2 align="center" class="style13"> Verification Status </h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
<%@page import="java.util.*"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%> 
<%@ include file="connect.jsp"%>
                     
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10="",s11="",s12="",s13="",s14="",s15="";
	String ss6="",ss9="",ss12="",ss15="";
	int i=0,j=1,k=1,count=0;
	int id = Integer.parseInt(request.getParameter("id"));

try 
	{		
      	                    String query="select * from cloud_files where id="+id+" "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
								s6=rs.getString(6);//
								s9=rs.getString(9);//
								s12=rs.getString(12);//
								s15=rs.getString(15);//
								
								String query2="select * from cloud_backup_files where id="+id+" "; 
						   	    Statement st2=connection.createStatement();
						   	    ResultSet rs2=st2.executeQuery(query2);
					   		    if ( rs2.next() ) 
			                    {
								   ss6=rs2.getString(6);//
								   ss9=rs2.getString(9);//
								   ss12=rs2.getString(12);//
								   ss15=rs2.getString(15);//
								   
								   if(s6.equalsIgnoreCase(ss6) && s9.equalsIgnoreCase(ss9) && s12.equalsIgnoreCase(ss12) && s15.equalsIgnoreCase(ss15))
								   {
					                %>									
									  <p align="center" class="style18 style4">Verification Done.</p>
								      <p align="center" class="style18 style4">And The File is Found to be Safe From The Attacker.</p>
									<%
								   }
								   else
								   {
								    if(!s6.equalsIgnoreCase(ss6))
									{
									%>
									  <p align="center" class="style18 style19 style5">Verification Done, Signature Mismatch Found(Block-1 Attacked).</p>
								      <p>&nbsp;</p>
									  <p align="center"><a href="do_verify_files21.jsp?id=<%=id%>&bname=<%="Block-1"%>" class="style12 style6"> Recover File </a></p>
									<%
									}
									if(!s9.equalsIgnoreCase(ss9))
									{
									%>
									  <p align="center" class="style18 style19 style5">Verification Done, Signature Mismatch Found(Block-2 Attacked).</p>
								      <p>&nbsp;</p>
									  <p align="center"><a href="do_verify_files21.jsp?id=<%=id%>&bname=<%="Block-2"%>" class="style12 style6"> Recover File </a></p>
									<%
									}
									if(!s12.equalsIgnoreCase(ss12))
									{
									%>
									  <p align="center" class="style18 style19 style5">Verification Done, Signature Mismatch Found(Block-3 Attacked).</p>
								      <p>&nbsp;</p>
									  <p align="center"><a href="do_verify_files21.jsp?id=<%=id%>&bname=<%="Block-3"%>" class="style12 style6"> Recover File </a></p>
									<%
									}
									if(!s15.equalsIgnoreCase(ss15))
									{
									%>
									  <p align="center" class="style18 style19 style5">Verification Done, Signature Mismatch Found(Block-4 Attacked).</p>
								      <p>&nbsp;</p>
									  <p align="center"><a href="do_verify_files21.jsp?id=<%=id%>&bname=<%="Block-4"%>" class="style12 style6"> Recover File </a></p>
									<%
									}
									
								   }
								   
			                    }
								
			                }
	  
	  
connection.close();
}
         
catch(Exception e)
{
out.println(e.getMessage());
}
%>
		  
		  
		  
		  
		  
		  
		  
		  
		<p>&nbsp;</p>
		<p align="right"><a href="do_verify_files.jsp" class="style2"> Back </a></p> 
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
