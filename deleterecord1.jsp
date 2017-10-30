<%@ page import="java.sql.*" %>
<%
	String uname=(String)session.getAttribute("uname");
	String students[] = request.getParameterValues("cbox");
	 
	int studno = 0;
	 
	PreparedStatement ps;
	if(students!= null && students.length!= 0)
	{
	try
	{	
				%>
				
				<%@ include file="connection.jsp" %> 
				
				<%
		while(studno < students.length)
		{ 
		 ps=con.prepareStatement("delete from sent where from1=? and messid=?");
		  
		 ps.setString(1,uname);
		 ps.setString(2,students[studno]);
		 
		  
		 ps.executeUpdate();
		 //ps1.executeUpdate();
		 studno++;
		}
		 
	}
	catch(Exception e)
	{
		out.println("Error : "+e);
	}
	}
	else
	{
		out.println("Please Select student/s<br>");
	}
%>
<jsp:include page="sent1.jsp" />