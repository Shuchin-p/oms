<%@page import="java.sql.*" %>
<%
	String uname=request.getParameter("query");
	 
	boolean valid=false;
	 

	try
	{
			%>
				
				<%@ include file="connection.jsp" %> 
				
				<%
		PreparedStatement ps= con.prepareStatement("select * from userdetail");
		
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			if(uname.equals(rs.getString(7)) )
			{
				valid=true;
			}
		}
		if(valid)
		{
%>
			<font color="blue"><b>user already exists</b></font>
<%			
		}	
		else
		{
%>		
	<font color="blue"><b>user is available </b></font>
<%	
		}
	}
	catch(Exception e)
	{
		out.println("Error : "+e);
	}
	
%>
