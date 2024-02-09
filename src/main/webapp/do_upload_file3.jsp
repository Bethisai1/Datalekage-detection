<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<title>Upload Status </title>

<%@ include file="connect.jsp"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@ page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream,java.math.*"%>
<%@ page import="java.lang.management.ThreadMXBean,java.lang.management.ManagementFactory"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>

<%
	String owner = (String) application.getAttribute("do");
	String gkey = (String) application.getAttribute("gkey");
try 
	{
	
	long stime=System.currentTimeMillis();
		String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8, s9 = "", s10, s11, s12, s13;
		int i=0, j=0, k=0;
		
		String file = request.getParameter("t42");
		
		String cont1 = request.getParameter("text1");
		String cont2 = request.getParameter("text2");
		String cont3 = request.getParameter("text3");
		String cont4 = request.getParameter("text4");
		
		String fsize =request.getParameter("fsize");
      	
		String mac1 = request.getParameter("t1");
		String mac2 = request.getParameter("t2");
		String mac3 = request.getParameter("t3");
		String mac4 = request.getParameter("t4");
		
		String role = request.getParameter("role");
		//String ac2 = request.getParameter("ac2");
		//String ac3 = request.getParameter("ac3");
		//String ac4 = request.getParameter("ac4");
		
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		PreparedStatement ps=connection.prepareStatement("insert into cloud_files(fname,ownername,fsize,ct1,mac1,access1,ct2,mac2,access2,ct3,mac3,access3,ct4,mac4,access4,dt,rankone,gkey) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,file);
		ps.setString(2,owner);
		ps.setString(3,fsize);
		
		ps.setString(4,cont1);
		ps.setString(5,mac1);
		ps.setString(6,role);
		
		ps.setString(7,cont2);
		ps.setString(8,mac2);
		ps.setString(9,role);
		
		ps.setString(10,cont3);
		ps.setString(11,mac3);
		ps.setString(12,role);
		
		ps.setString(13,cont4);
		ps.setString(14,mac4);
		ps.setString(15,role);
		
		ps.setString(16,dt);
		ps.setString(17,"0");
		ps.setString(18,gkey);
		int x=ps.executeUpdate();
		if(x>0){
						
		PreparedStatement ps2=connection.prepareStatement("insert into cloud_backup_files select * from cloud_files where (ownername='"+owner+"' and fname='"+file+"') ");
        ps2.executeUpdate();
		
		
			long etime=System.currentTimeMillis();
					long ttime = etime-stime;
					long tpt=((cont1.length()+cont2.length()+cont3.length()+cont4.length())/ttime)*1024;
					
					Statement st1=connection.createStatement();
				st1.executeUpdate("insert into  results values ('"+file+"','"+ttime+"','"+tpt+"')"); 
		
						
								out.println("Successfully Uploaded The File");							
							
			   }
		
		
		
		
		
		
		
		
		connection.close();
	}
         
  catch(Exception e)
  {
	out.println(e.getMessage());
  }
%>
<p><a href="do_upload_file.jsp">Back</a></p>
          