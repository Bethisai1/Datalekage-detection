<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Update Status</title>
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
.style9 {font-family: "Times New Roman", Times, serif; font-size: 20px; color: #000000; }
.style10 {color: #000000}
.style12 {color: #FF0000}
.style13 {color: #0000FF}
.style14 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style14">data leakage detection</a></h1>
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
          <h2 align="center" class="style13"> Update Status</h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
<%@page import="java.util.*"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%> 
<%@ include file="connect.jsp"%>
                     
<%
int id = Integer.parseInt(request.getParameter("id"));
try
{	  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14,s15,s16,s17,s18;
	int j=1,k=1,count=0;
	
	String ct1 = request.getParameter("text1");
	String ct2 = request.getParameter("text2");
	String ct3 = request.getParameter("text3");
	String ct4 = request.getParameter("text4");
	
	            String encryptedValue1="",encryptedValue2="",encryptedValue3="",encryptedValue4="";
			
			    String keys = "ef50a0ef2c3e3a5f";
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
				
				encryptedValue1 = new String(Base64.encode(ct1.getBytes()));
				encryptedValue2 = new String(Base64.encode(ct2.getBytes()));
				encryptedValue3 = new String(Base64.encode(ct3.getBytes()));
				encryptedValue4 = new String(Base64.encode(ct4.getBytes()));
	
	String query3="select * from cloud_files where id="+id+"" ;
	Statement st3=connection.createStatement();
	ResultSet rs3=st3.executeQuery(query3);
	if ( rs3.next() ) 
	{
	  s5=rs3.getString(5);//
	  s8=rs3.getString(8);//
	  s11=rs3.getString(11);//
	  s14=rs3.getString(14);//
	  
	  if(s5.equalsIgnoreCase(encryptedValue1) && s8.equalsIgnoreCase(encryptedValue2) && s11.equalsIgnoreCase(encryptedValue3) && s14.equalsIgnoreCase(encryptedValue4))
	  {
	  %><p align="center" class="style12"> You Have Not Changed The Content of Any Block </p>
<%
	  }
	  else
	  {
	  
	String h[]=new String[5];
	String filename="filename";
	String filename1="filename1";
	String filename2="filename2";
	String filename3="filename3";
	String filename4="filename4";
	
	        PrintStream p1 = new PrintStream(new FileOutputStream(filename1+".txt"+"/"));
			p1.print(new String(encryptedValue1));
			PrintStream p2 = new PrintStream(new FileOutputStream(filename2+".txt"+"/"));
			p2.print(new String(encryptedValue2));
			PrintStream p3 = new PrintStream(new FileOutputStream(filename3+".txt"+"/"));
			p3.print(new String(encryptedValue3));
			PrintStream p4 = new PrintStream(new FileOutputStream(filename4+".txt"+"/"));
			p4.print(new String(encryptedValue4));
			
			for(int i=1;i<5;i++)
			{
				MessageDigest md = MessageDigest.getInstance("SHA1");
				FileInputStream fis11 = new FileInputStream(filename+i+".txt"+"/");
				DigestInputStream dis1 = new DigestInputStream(fis11, md);
				BufferedInputStream bis1 = new BufferedInputStream(dis1);
	 
				//Read the bis so SHA1 is auto calculated at dis
				while (true) 
				{
					int b1 = bis1.read();
					if (b1 == -1)
						break;
				}
	 
				BigInteger bi1 = new BigInteger(md.digest());
				String spl1 = bi1.toString();
				h[i] = bi1.toString(16);
			
      		}
	

								
		     Statement st1 = connection.createStatement();
	         String query1 ="update cloud_files set ct1='"+encryptedValue1+"',ct2='"+encryptedValue2+"',ct3='"+encryptedValue3+"',ct4='"+encryptedValue4+"',mac1='"+h[1]+"',mac2='"+h[2]+"',mac3='"+h[3]+"',mac4='"+h[4]+"' where id="+id+" ";
		     st1.executeUpdate(query1);
		   
		     Statement st2 = connection.createStatement();
	         String query2 ="update cloud_backup_files set ct1='"+encryptedValue1+"',ct2='"+encryptedValue2+"',ct3='"+encryptedValue3+"',ct4='"+encryptedValue4+"',mac1='"+h[1]+"',mac2='"+h[2]+"',mac3='"+h[3]+"',mac4='"+h[4]+"' where id="+id+" ";
		     st1.executeUpdate(query2);
								
								
								%>
									  <p align="center" class="style18 style20 style7 style13">Successfully Updated the File.</p>
								      
								<%
								
			                
	  
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
		<p align="right"><a href="do_my_files22.jsp?id=<%=id%>" class="style2"> Back </a></p> 
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
