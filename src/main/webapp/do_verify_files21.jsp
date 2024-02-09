<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Recovery Status</title>
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
.style7 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
	color: #0000FF;
}
.style8 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style8">data leakage detection</a></h1>
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
          <h2 align="center" class="style13"> Recovery Status </h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
<%@page import="java.util.*"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%> 
<%@ include file="connect.jsp"%>
                     
<%	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14,s15,s16,s17,s18;
	int i=0,j=1,k=1,count=0;
	int id = Integer.parseInt(request.getParameter("id"));
	String bname = request.getParameter("bname");

try 
	{		
      	                    String query="select * from cloud_backup_files where id="+id+" "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() ) 
			                {
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
								s6=rs.getString(6);
								s7=rs.getString(7);//fname
								s8=rs.getString(8);//cont
								s9=rs.getString(9);
								s10=rs.getString(10);//dt
								s11=rs.getString(11);//dsig
								s12=rs.getString(12);//
								s13=rs.getString(13);
								s14=rs.getString(14);
								s15=rs.getString(15);
								s16=rs.getString(16);
								s17=rs.getString(17);
								s18=rs.getString(18);
								
		if(bname.equalsIgnoreCase("Block-1"))
		{
		   Statement st1 = connection.createStatement();
		   String query1 ="update cloud_files set ct1='"+s5+"',mac1='"+s6+"' where id="+id+" ";
		   st1.executeUpdate (query1);
		   
		    %>
				<p align="center" class="style18 style20 style7">Successfully Recovered the File (Block-1).</p>
			<%
		}
		else if(bname.equalsIgnoreCase("Block-2"))
		{
		   Statement st1 = connection.createStatement();
		   String query1 ="update cloud_files set ct2='"+s8+"',mac2='"+s9+"' where id="+id+" ";
		   st1.executeUpdate (query1);
		   
		    %>
				<p align="center" class="style18 style20 style7">Successfully Recovered the File (Block-2).</p>
			<%
		}
		else if(bname.equalsIgnoreCase("Block-3"))
		{
		   Statement st1 = connection.createStatement();
		   String query1 ="update cloud_files set ct3='"+s11+"',mac3='"+s12+"' where id="+id+" ";
		   st1.executeUpdate (query1);
		   
		    %>
				<p align="center" class="style18 style20 style7">Successfully Recovered the File (Block-3).</p>
			<%
		}
		else if(bname.equalsIgnoreCase("Block-4"))
		{
		   Statement st1 = connection.createStatement();
		   String query1 ="update cloud_files set ct4='"+s14+"',mac4='"+s15+"' where id="+id+" ";
		   st1.executeUpdate (query1);
		   
		    %>
				<p align="center" class="style18 style20 style7">Successfully Recovered the File (Block-4).</p>
			<%
		}
								
		   
		   
		   Statement st2 = connection.createStatement();
		   String query2 ="update attacker_details set status='Recovered' where fname='"+s2+"' ";
		   st2.executeUpdate (query2);
								
								
								
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
