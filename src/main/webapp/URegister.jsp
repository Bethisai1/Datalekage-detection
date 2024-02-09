<title>Bob Registration Authentication</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.security.DigestInputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.math.BigInteger"%>
<%@page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String uname=null;     
        			String pass=null;
        			String grp=null;
					String email=null;
					String mno=null;
					String addr=null;
					String dob=null;
				    String location=null;
					String status="Waiting";
					String gender=null;
					String pincode=null;
					
				
					FileInputStream fs=null;
					File file1 = null;	
					try 
					{
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("grp"))
							{
								grp=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pincode"))
							{
								pincode=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("location"))
							{
								location=multi.getParameter(paramname);
							}
									
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1) 
									{
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4){
												binFragment = "0" + binFragment;
										}
											bin += binFragment;
											//System.out.print(bin);
									}
								}	
							}
						}		
					}
					FileInputStream fs1 = null;
					//name=dirName+"\\Gallery\\"+image;
					int lyke=0;
					//String as="0";
					//image = image.replace(".", "_b.");
					String query1="select * from d_receiver  where name='"+uname+"'"; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		
							out.println("Bob Name Already Exits");							
							%><p><a href="dr_Register.jsp">Back</a>         <a href="index.html">Home</a> </p><%
					   }
					   else
					   {
					   
					   String keydetails=grp+"3yewund26372826282";
					   
					   String h1="";
      		String filename="D:/filename.txt";
					   	PrintStream p = new PrintStream(new FileOutputStream(filename));
			p.print(new String(keydetails));
			
			MessageDigest md = MessageDigest.getInstance("SHA1");
			FileInputStream fis11 = new FileInputStream(filename);
			DigestInputStream dis1 = new DigestInputStream(fis11, md);
			BufferedInputStream bis1 = new BufferedInputStream(dis1);
 
			//Read the bis so SHA1 is auto calculated at dis
			while (true) {
				int b1 = bis1.read();
				if (b1 == -1)
					break;
			}
 
			BigInteger bi1 = new BigInteger(md.digest());
			String spl1 = bi1.toString();
			h1 = bi1.toString(16);
					   
					   
					   
						   PreparedStatement ps=connection.prepareStatement("insert into d_receiver(name,pass,ugroup,email,mobile,addr,dob,gender,pin,location,imagess,status,gkey) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
							ps.setString(1,uname);
							ps.setString(2,pass);
							ps.setString(3,grp);
							ps.setString(4,email);	
							ps.setString(5,mno);
							ps.setString(6,addr);
							ps.setString(7,dob);
							ps.setString(8,gender);
							ps.setString(9,pincode);
							ps.setString(10,location);
							ps.setBinaryStream(11, (InputStream)fs, (int)(file1.length()));	
							ps.setString(12,"Waiting");
							ps.setString(13,h1);
							
							
							if(f == 0)
								ps.setObject(11,null);
							else if(f == 13)
							{
								fs1 = (FileInputStream)list.get(0);
								ps.setBinaryStream(11,fs1,fs1.available());
							}
						   
							
							int x=ps.executeUpdate();
							if(x>0)
							{
									out.println("Registered Sucessfully");							
									%><p><a href="dr_login.jsp">Back</a><a href="index.html">Home</a> </p><%
							}
						}
					} 
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
%>
