<%@page import="java.sql.*" %>
<%
	 
	String from1= (String)session.getAttribute("uname");
	String contValue=request.getParameter("contValue");
	 
    try
	{
				%>
		
		<%@ include file="connection.jsp" %> 
		
		<%
		PreparedStatement ps=con.prepareStatement("select * from contactdetail where contactid=?");
		ps.setString(1,contValue);
		
		ResultSet rs=ps.executeQuery();
%>
<form method="post" action="showContact1.jsp?">
<input type="hidden" name="editFlag" value="true" />
<input type="hidden" name="contId" value="<%=contValue%>" />

<table height="36" width="949" cellspacing="0" cellpadding="0" >

<%
	while(rs.next())
	{
			
		 
			
			
				
%>
			<tr><td colspan="4"><img src="images/inbox.jpg" width="959" height="22"></td>
</tr>
			<tr>
			<td style="border-bottom:1px dotted wheat" bgcolor="#FFFFFF">Contact :<input type="text" name="contactVal" style="width:45%" value="<%=rs.getString(3) %>" /></td></tr>
			
			
<%
		
	
	} 
%>
<tr><td colspan="3"><img src="images/trback1.jpg" width="961"></td>
</tr>

<tr><td colspan="3">
 <input type="submit" value="Update"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "></center>
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