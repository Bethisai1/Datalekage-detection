<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Secret Key Req status</title>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%			       
									
					
try {
						
						String uname = (String)application.getAttribute("do");
						String fname = request.getParameter("name");
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
						
			 			String query1="select status from sk_req where fname='"+fname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
				    	if ( rs1.next() )
					    {
						  String s1 = rs1.getString(1);
						  
						  if(s1.equalsIgnoreCase("Requested"))
						  {
						  %> 
                            <p class="style13">Already You Have Requested for this File. </p>
			                <p class="style13">Wait For The Key Generation. </p>
			              <%
						  }
						  else
						  {
						  %> 
			                <p class="style13">Secret Key is Already Generated for this File. </p>
			              <%
						  }
						 
						 %>
                          <p align="left"><a href="do_req_sk.jsp" class="style5 style14">Back</a></p>
                         <%
						  
					   	}//if close	
							
							
					   else
					   {
					   
                        PreparedStatement ps=connection.prepareStatement("insert into sk_req(downer,fname,dt,status) values(?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,fname);
						ps.setString(3,dt);
						ps.setString(4,"Requested");
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                          <p class="style6">You Have Requested Successfully</p>
					      <p class="style6">Wait For the SK Generation</p>
                          <p>&nbsp; </p>
                          <p align="left"><a href="do_req_sk.jsp" class="style16">Back</a></p>
                        <%
						}
					   }//else close
			
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
%>
                    