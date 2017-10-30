<%@page import="java.sql.*" %>
<%
	 
	String from1= (String)session.getAttribute("uname");
	String mess=request.getParameter("mess");
	 	 int flag1=2;

    try
	{
				%>
		
		<%@ include file="connection.jsp" %> 
		
		<%


		PreparedStatement ps1=con.prepareStatement("update draft set flag= ? where from1=? and messid=?");
		ps1.setInt(1,flag1);
		ps1.setString(2,from1);
		ps1.setString(3,mess);
		ps1.executeUpdate();



		PreparedStatement ps=con.prepareStatement("select * from draft where from1=? and messid=?");
		ps.setString(1,from1);
		ps.setString(2,mess);
		ResultSet rs=ps.executeQuery();
%>
<form method="post" action="compose1.jsp?"> 
<table height="36" width="949" cellspacing="0" cellpadding="0" >
<input type="hidden" name="isDraft" value="true" />
<%
	while(rs.next())
	{
			
		 if(from1.equals(rs.getString(5)))
		{
			
			
				
%>

			<input type="hidden" name="draftId" value=<%=rs.getString(1) %> />

			
			<td width="126" >From :</td><td width="126"><font color="#ffffff"><b><%=rs.getString(5) %></b></font></td></tr>
			<tr><td width="126" >To :</td><td width="126"><font color="#ffffff"><b><%=rs.getString(2) %></b></font></td></tr>
			<tr><td width="126" >Subject :</td><td width="126"><font color="#ffffff"><b> <%=rs.getString(3) %></b></font></td></tr>
			<tr><td width="126" >date :</td><td width="126"><font color="#ffffff"><b> <%=rs.getString(6) %></b></font></td></tr>
			<tr><td width="126" olspan="3" >Message :<pre><font color="#ffffff"><b> <%=rs.getString(4) %></b></font></pre></td></tr>
			
<%
		
		}
		
	} 
%>
<tr><td colspan="3"><img src="images/trback1.jpg" width="961"></td>
</tr>

<tr><td colspan="3">
 <input type="submit" value="Forward"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "></center>
	</td>
		 
		


</table>
</form>
<%
}
catch(Exception e)
{
	out.println("Error: "+e);
}
%>