<%@page import="java.sql.*" %>
<%
	
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String address=request.getParameter("address");
	String zip=request.getParameter("zip");
	String contact=request.getParameter("contact");
	String loc=request.getParameter("loc");
	String loginid=request.getParameter("loginid");
	String pass=request.getParameter("pass");
	
	try
	{
				%>
				
				<%@ include file="connection.jsp" %> 
				
				<%
		PreparedStatement ps= con.prepareStatement("insert into userdetail values(?, ?, ?, ?, ?, ?, ?, ?)");
		ps.setString(1,fname);
		ps.setString(2,lname);
		ps.setString(3,address);
		ps.setString(4,zip);
		ps.setString(5,contact);
		ps.setString(6,loc);
		ps.setString(7,loginid);
		ps.setString(8,pass);
		ps.executeUpdate();
%>
	<jsp:forward page="index.html" />
<%
	}
	catch(Exception e)
	{
		out.println("Error : "+e);
	}
	
%>