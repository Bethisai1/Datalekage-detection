<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload File</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
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
.style4 {font-family: "Times New Roman", Times, serif}
.style5 {font-size: 20px}
.style6 {color: #0000FF}
.style7 {font-family: "Times New Roman", Times, serif; font-size: 20px; }
.style8 {color: #FF0000}
.style9 {font-size: 24px}
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
          <h2 align="center" class="style13"> Upload File </h2>
		  <p>&nbsp;</p>
		  
		  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%

try
{

String uname = (String)application.getAttribute("do");
String fname = request.getParameter("name");

                        String query1="select status from enc_key_req where fname='"+fname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
				    	if ( rs1.next() )
					    {
						  String s1 = rs1.getString(1);
						  
						  if(s1.equalsIgnoreCase("Requested"))
						  {
						  %> 
                            <p class="style13 style4 style5 style8">Encyprtion Permission is Not Provided For This File </p>
			                <p class="style13 style4 style5 style8">Wait..!</p>
			              <%
						  }
						  else
						  {
						  
						    String query2="select status from sk_req where fname='"+fname+"' "; 
						    Statement st2=connection.createStatement();
						    ResultSet rs2=st2.executeQuery(query2);
				    	    if ( rs2.next() )
					        {
							  String s2 = rs2.getString(1);
							  
							 if(s2.equalsIgnoreCase("Requested"))
						     {
						     %> 
                               <p class="style13 style4 style5 style8">Secret Key Permission is Not Provided For This File </p>
			                   <p class="style13 style4 style5 style8">Wait..!</p>
			                 <%
						     }
							 else
							 {
%>							 
<p align="center" class="style7">Both Encyprtion and Secret Key Permission is Provided For This File </p>
<p>&nbsp;</p>

<form id="form1" name="form1" method="post" action="do_upload_file2.jsp">
             <table width="598" border="0" align="center">
						
						<tr>
						<td align="center" height="52" bgcolor="#99FF99" class="style20 style4 style5 style6">File Name :- </td>
						<td bgcolor="#FFCC00"><input name="fname" type="text" id="t42" size="45" value="<%=fname%>" readonly="readonly"/></td>
						</tr>
						
						<tr>
						<td align="center" width="286" height="44" bgcolor="#99FF99"><span class="style20 style4 style5 style6">Select File :- </span></td>
						<td width="356" bgcolor="#FFCC00"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
						</tr>
						
						<tr>
						<td align="center" bgcolor="#99FF99"><span class="style20 style4 style5 style6">Content</span></td>
						<td bgcolor="#FFCC00"><textarea name="text" id="textarea" cols="45" rows="15"></textarea></td>
						</tr>
						
						<tr>
						<td height="41"></td>
						<td><input type="submit" name="Submit" value="Encrypt and Upload" /></td>
						</tr>
          </table>
</form>
<%
							 
							 }
							  
							}
							else
							{
							%> 
                            <p align="center" class="style13 style4 style5 style8">Still You Have Not Requested SK Permission For This File. </p>
			                <%
							}
						  
						  }
						
						
						}



}
catch (Exception e) 
{
out.println(e.getMessage());
}
%>		  
		  
		  
		  
		  
		  
		  
		  
		<p>&nbsp;</p>
		<p align="right"><a href="do_upload_file.jsp" class="style2"> Back </a></p> 
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
