<%@page import="java.sql.*" %>
<%
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	boolean valid=false;
	 

	try
	{
			%>
				
				<%@ include file="connection.jsp" %> 
				
				<%
		PreparedStatement ps= con.prepareStatement("select * from userdetail where loginid=? and pass=?");
		ps.setString(1,uname);
		ps.setString(2,pass);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			if(uname.equals(rs.getString(7)) && pass.equals(rs.getString(8)))
			{
				valid=true;
			}
		}
		if(valid)
		{
			session.setAttribute("uname",uname);
				
%>
	<jsp:forward page="main.jsp" />
<%
			}
			else
			{
				out.println("user and password are invalid");
%>
	<jsp:include page="index.html" />
<%
			}
	}
	catch(Exception e)
	{
		out.println("Error : "+e);
	}
	
%>
