	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   
			
			String id=request.getParameter("id");
			String str = "Authorized";
			
       		Statement st1 = connection.createStatement();
       		String query1 ="delete from cloud_files where id="+id+" ";
	   		st1.executeUpdate (query1);
			
			out.print("Succesfully Deleted the File");
			
			
			
			
			connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
<p><a href="do_my_files2.jsp">Back</a></p>