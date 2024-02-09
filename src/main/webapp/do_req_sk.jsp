<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Request SK and View</title>
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
.style1 {font-size: 25px}
.style3 {font-size: 30px}
.style4 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 25px;
	color: #1e5381;
}
.style5 {font-size: 15px}
.style6 {font-family: "Times New Roman", Times, serif}
.style7 {
	font-size: 25px;
	color: #000000;
}
.style8 {font-size: 20px}
.style9 {color: #0000FF}
.style10 {color: #000000}
.style11 {color: #FF00FF}
.style12 {color: #FFFFFF; }
.style13 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header style9">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style13">data leakage detection</a></h1>
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
          <h2 align="center" class="style13 style13 style1"> <span class="style3"> Request File Secret Key Permission and View </span></h2>
		  <p>&nbsp;</p>
		  
		  
		  
		  
<form name="s" action="do_req_sk_ins.jsp" method="post" onSubmit="return valid()"  ons target="_top"> 
          
                        
						<p align="center"> <span class="style6">
						  <label for="name"> <span class="style7">Select File</span> </label>
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
                            <input name="submit" type="submit" value="Send Request" />
                        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
</form>


<h2 align="center" class="style13 style13 style1"> <span class="style3"> View My Secret Key Requested Files </span></h2>
<p>&nbsp;</p>
<table width="610" border="1.5" cellpadding="0" cellspacing="0" align="center">
         <tr bgcolor="#00FF33">
           <td width="39" height="54" bgcolor="#CCCC00"><div align="center" class="style14 style15 style16 style17 style18 style6 style8 style9">Si.No.</div></td>
		   <td width="127" bgcolor="#CCCC00"><div align="center" class="style14 style15 style16 style17 style18 style6 style8 style9">File Name</div></td>
           <td width="129" bgcolor="#CCCC00"><div align="center" class="style14 style15 style16 style17 style18 style6 style8 style9">Requested Date</div></td>
		   <td width="93" bgcolor="#CCCC00"><div align="center" class="style14 style15 style16 style17 style18 style6 style8 style9">Status/SK</div></td>
		 </tr>

<%	  
			  
	String s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=1,k=0;

 try 
	{		
      	                    String query="select * from sk_req where downer='"+user+"' "; 
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
                      <td height="50" bgcolor="#CC6600"><div align="center" class="style8 style13 style14 style16 style17 style19 style6 style10"><%=j%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style8 style13 style14 style16 style17 style19 style6 style10"><%=s3%></div></td>
					  <td bgcolor="#CC6600"><div align="center" class="style8 style13 style14 style16 style17 style19 style6 style10"><%=s4%></div></td>
					  <%
					  if(s5.equalsIgnoreCase("Requested"))
					  {
					  %><td bgcolor="#CC6600"><div align="center" class="style8 style13 style14 style16 style17 style19 style6 style10"><%=s5%></div></td>
					  <%
					  }
					  else
					  {
					  %><td bgcolor="#CC6600"><div align="center" class="style11 style8 style13 style14 style16 style17 style19 style6 style10">
					    <p class="style12"><%=s5%></p>
					    <p class="style10">(Permitted)</p>
					  </div></td><%
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
		<p align="right"><a href="do_main.jsp" class="style5"> Back </a></p> 
        </div>
      </div>
      <div class="sidebar">
	  <p class="style9">&nbsp;</p>
        <div class="gadget">
          <p class="star style14 style4">Data Owner Menu</p>
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
