<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Searched Data</title>
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
.style5 {font-family: "Times New Roman", Times, serif}
.style6 {color: #0000FF}
.style7 {color: #000000}
.style8 {font-size: 20px}
.style9 {color: #FF0000}
.style10 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style10">data leakage detection</a></h1>
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
          <h2 align="center" class="style13"> View All Shared File and Searched Data </h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

<%


try
{

                            

								String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13,s14,s15,s16,s17,s18;
								String strDate="",strTime="",dt="";
								int i=0,rank=0,count=0;
								String category = (String)application.getAttribute("dr_cat");
								String gkey = (String)application.getAttribute("gkey1");
							    String	input = request.getParameter("keyword");	
								String keyword = input.toLowerCase();
								 String ugroup= (String)application.getAttribute("ugroup");
								
								
								String sql2="select * from cloud_files where gkey='"+gkey+"' or  access4='"+ugroup+"'";
								Statement st2=connection.createStatement();
								ResultSet rs2=st2.executeQuery(sql2);
								while(rs2.next())
								{
									
										    i = rs2.getInt(1);
										   s2 = rs2.getString(2).toLowerCase();//fname
										   s3 = rs2.getString(3);
										   s4 = rs2.getString(4);
										   s5 = rs2.getString(5);//ct1
										   s6 = rs2.getString(6);
										   s7 = rs2.getString(7);//category
										   s8 = rs2.getString(8);//ct2
										   s9 = rs2.getString(9);
										   s10 = rs2.getString(10);
										   s11 = rs2.getString(11);//ct3
										   s12 = rs2.getString(12);
										   s13 = rs2.getString(13);
										   s14 = rs2.getString(14);//ct4
										   s15 = rs2.getString(15);
										   s16 = rs2.getString(16);
										   s17 = rs2.getString(17);
										   s18 = rs2.getString(18);
										   
						                        String keys="q2e34rrfgfgfgg2a";
												byte[] keyValue1 = keys.getBytes();
												Key key1 = new SecretKeySpec(keyValue1, "AES");
												Cipher c1 = Cipher.getInstance("AES");
												c1.init(Cipher.DECRYPT_MODE, key1);
												
												String decryptedValues1 = new String(Base64.decode(s5.getBytes())).toLowerCase();
												String decryptedValues2 = new String(Base64.decode(s8.getBytes())).toLowerCase();
												String decryptedValues3 = new String(Base64.decode(s11.getBytes())).toLowerCase();
												String decryptedValues4 = new String(Base64.decode(s14.getBytes())).toLowerCase();
												
							
												
                  if ((decryptedValues1.contains(keyword)) || (decryptedValues1.contains(keyword)) || (decryptedValues1.contains(keyword)) || (decryptedValues1.contains(keyword)) ) 
							{
										
										int UpdateRank=Integer.parseInt(s18)+1;
										
										
										
									%>
									
                </P>
 </p>
         <table width="273" align="center">
              <tr>
	            <td width="124" height="34" bgcolor="#fc6400"> <div align="left" class="style13 style14 style3 style20 style12 style18 style16 style5 style2 style6">File Name:  </div></td>
			     <td width="137" bgcolor="#fc6400"><span class="style15 style13 style12 style19 style21 style8 style6 style10"><span class="style15 style21 style10 style14 style19 style5 style2 style7"><%=s2%></span></span> </td>
              </tr>
			   
			   <tr>
		         <td width="124" height="36" bgcolor="#fc6400"> <div align="left" class="style13 style14 style3 style20 style12 style18 style5 style2 style6"><span class="style16">Owner Name</span> :  </div></td>
			     <td width="137" bgcolor="#fc6400"><span class="style15 style13 style12 style19 style21 style8 style6 style10"><span class="style15 style21 style10 style14 style19 style5 style2 style7"><%=s3%></span></span> </td>
			   </tr>
		</table>
                <p>
            <div align="center" class="style5 style14"><span class="style11 style12 style8">  <a href="dr_search_data2.jsp?id=<%=i%>&key=<%=keyword%>&rank=<%=UpdateRank%>">View Details </a></span></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
				
						  	     
								
								
									   
							count++;
							}
							
								}//while close
						 
					
					if(count==0)
					{
					%><p align="center" class="style16 style5 style8 style9">There is No Matching Files for Your Keyword</p>
				<%
					}
								
							
						
					}
					
					catch(Exception e)
					{						  
					    e.printStackTrace();
						//out.println(e.getMessage());
					}
%>
	  
		  
		  
		  
		  
		  
		  
		  
		<p>&nbsp;</p>
		<p align="right"><a href="dr_search_data.jsp" class="style2"> Back </a></p> 
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
