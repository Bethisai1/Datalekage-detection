<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type="text/javascript">      
function valid()
{


var na3=document.s.userid.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.userid.focus();
return false;
}
else
{

}
var na4=document.s.pass.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.pass.focus();
return false;
}

var na6=document.s.email.value;
if(na6=="")

{
alert("Please Enter the Email");
document.s.email.focus();
return false;
}

if (na6.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}

if (na6.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.s.T3.focus();
return false;
}	


var na7=document.s.mobile.value;
if(na7.length!=10)

{
alert("Please Enter Valid Mobile number or Enter 10 Digit number");
document.s.mobile.focus();
return false;
}

if(na7=="")

{
alert("Please Enter  Mobile number");
document.s.mobile.focus();
return false;
}


var na55=document.s.address.value;
if(na55=="")

{
alert("Please Enter Your address");
document.s.address.focus();
return false;
}

var dob=document.s.dob.value;
if(dob=="")

{
alert("please Enter Your Date Of Birth");
document.s.dob.focus();
return false;
}





var na9=document.s.gender.value;
if(na9=="-Select-")

{
alert("Please Select Your Gender");
document.s.gender.focus();
return false;
}

var na10=document.s.pincode.value;
if(na10=="")

{
alert("please Enter Your Pincode");
document.s.pincode.focus();
return false;
}

var na5=document.s.location.value;
if(na5=="")

{
alert("Please Enter Your location");
document.s.location.focus();
return false;
}

var na11=document.s.pic.value;
if(na11=="")

{
alert("please Select Picture");
document.s.pic.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style9 {font-size: 15px}
.style10 {
	color: #FF0000;
	font-weight: bold;
}
.style13 {font-weight: bold}
.style14 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style14">data leakage detection</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="cs_login.jsp"><span>Cloud Service Provider</span></a></li>
          <li><a href="au_login.jsp"><span>Trusted Authority</span></a></li>
          <li class="active"><a href="do_login.jsp"><span>Data Owner</span></a></li>
          <li><a href="dr_login.jsp"><span>Data Accessor</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 align="center"> Data Owner Registration </h2>
          <p>&nbsp;</p>







 <form action="ORegister.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><br />
            <img src="images/Register.png" width="300" height="163" /><br />
            <br />
            <span class="style10"><br />
              Owner Name (required)<br />
            </span></label>
            <p class="style6 style10">
              <input id="name" name="userid" class="text" />
            </p>
            <span class="style6 style10">
            <label for="password">Password (required)<br />
            </label>
            </span>
            <p class="style6 style10">
              <input type="password" id="password" name="pass" class="text" />
            </p>
           
            <p class="style6 style10">Select Your Group <br />
                <select name="grp">
                  <option>--Select--</option>
                  <option>Engineer</option>
				  <option>Scientist</option>                  
				  <option>Doctor</option>
                </select></p>
            <span class="style6 style10">
            <label for="email">Email Address (required)<br />
            </label>
            </span>
            <p class="style6 style10">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style6 style10">
            <label for="mobile">Mobile Number (required)<br />
            </label>
            </span>
            <p class="style6 style10">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style6 style10">
            <label for="address">Your Address<br />
            </label>
            </span>
            <p class="style6 style10">
              <textarea name="address" cols="50" id="address"></textarea>
            </p>
            <span class="style6 style10">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style6 style10">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style6 style10">
            <label for="gender">Select Gender (required)<br />
            </label>
            </span>
            <p class="style6 style10">
              <select id="s1" name="gender" class="text">
                <option>-Select-</option>
                <option>Male</option>
                <option>Female</option>
              </select>
            </p>
            <span class="style6 style10">
            <label for="pincode">Enter Pincode (required)<br />
            </label>
            </span>
            <p class="style6 style10">
              <input id="pincode" name="pincode" class="text" />
            </p>
            <span class="style6 style10">
            <label for="location">Enter Location (required)<br />
            </label>
            </span>
            <p class="style6 style10">
              <input id="loc" name="location" class="text" />
            </p>
            <span class="style6 style10">
            <label for="pic">Select Profile Picture (required)</label>
            </span>
            <span class="style10">
            <label for="pic"></label>
            
            <label for="pic"></label>
            </span>
            <strong>
            <label for="pic"></label>
            </strong>
            <label for="pic"><br />
            </label>
            <p>
              <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p>
              <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
<p>&nbsp;</p>
<p align="right"><a href="do_login.jsp" class="style13 style9"> Back </a></p>














        </div>
      </div>
      <div class="sidebar">
	  <p>&nbsp;</p>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home Page</a></li>
            <li><a href="cs_login.jsp">Cloud Service Provider</a></li>
            <li><a href="au_login.jsp">Trusted Authority</a></li>
            <li><a href="do_login.jsp">Data Owner</a></li>
            <li><a href="dr_login.jsp">Data Accessor</a></li>
			<li><a href="attacker_login.jsp">Attacker</a></li>
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
