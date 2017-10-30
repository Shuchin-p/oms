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
		PreparedStatement ps1=con.prepareStatement("update  messdetail set flag= ? where to1=? and messid=?");
		ps1.setInt(1,flag1);
		ps1.setString(2,from1);
		ps1.setString(3,mess);
		ps1.executeUpdate();
		
		PreparedStatement ps=con.prepareStatement("select * from messdetail where to1=? and messid=?");
		ps.setString(1,from1);
		ps.setString(2,mess);
		ResultSet rs=ps.executeQuery();
%>
<form method="post" > 
<table height="36" width="961" cellspacing="0" cellpadding="0"  >

<%
	while(rs.next())
	{
%>	
	 <a href="replycompose1.jsp?mess1=<%= rs.getString(5) %>&mess2=<%=rs.getString(3) %>"><input type="button" value="Reply"></a><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
			 
<%		 if(from1.equals(rs.getString(2)))
		{
			
			
				
%>
			</span>
<span class="Apple-style-span" style="border-collapse: separate; font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium">
			 
			<tr>
			<td width="109" ><font color="#FFFFFF">From :</font></td><td width="852">
			<b><font color="#FFFFFF"><%=rs.getString(5) %></font></b></td></tr>
			</span><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
			 
<span class="Apple-style-span" style="border-collapse: separate; font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium">
			 
			<tr><td width="109" ><font color="#FFFFFF">To :</font></td><td width="852">
				<b><font color="#FFFFFF"><%=rs.getString(2) %></font></b></td></tr>
			<tr><td width="109" ><font color="#FFFFFF">Subject :</font></td><td width="852">
				<b> <font color="#FFFFFF"> <%=rs.getString(3) %></font></b></td></tr>
			<tr><td ><font color="#FFFFFF">Date :</font></td><td>
				<font color="#FFFFFF"><%=rs.getString(6) %></font></td></tr>
			<tr><td width="109" colspan="2" >
				<font color="#FFFFFF">Message :</font><pre><font color="#FFFFFF"><b> <%=rs.getString(4) %></b></font></pre></td></tr>
			
			
</span>
			
			
<%
		
		}
%>		
<span class="Apple-style-span" style="border-collapse: separate; font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium">
			 
<tr><td colspan="2"><font color="#FFFFFF">Attachment: </span> </font><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; ">
			 
	<a href="./uploaded/<%= rs.getString(8) %>"><font color="#FFFFFF"><%=rs.getString(8) %></font></a></td>
<%		
	} 
%>

</tr>

<tr><td colspan="2"><font color="#FFFFFF"><img src="images/trback1.jpg" width="961"></font></td>
</tr>

<tr><td colspan="2">

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