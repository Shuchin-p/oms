
</script>
</head>

<%@page import="java.sql.*,java.util.Date" %>
<%
	
	 String dd,dd1;
	 int flag1=1;
	String from1= (String)session.getAttribute("uname");
	String searchtext=request.getParameter("searchtext");
	Date d = new Date();
    try
	{
		%>
				
				<%@ include file="connection.jsp" %> 
				
				<%
		PreparedStatement stmt=con.prepareStatement("select * from messdetail where to1=? and from1 like'%"+searchtext+"%' or subject like'%"+searchtext+"%' or message like'%"+searchtext+"%' or date like'%"+searchtext+"%'");
		stmt.setString(1,from1);
		//stmt.setString(2,searchtext);
		
		
		ResultSet rs=stmt.executeQuery();
%>
<form method="post" action="deleterecord.jsp"> 
<table height="36" width="851" cellspacing="0" cellpadding="0" >

<tr><td colspan="4"><img src="images/inbox.jpg" width="851" height="29"></td>
</tr>

<tr bgcolor= wheat>
<td width="174" ><u><b>From</b></u></td>
<td width="226" ><u><b>Subject</b></u></td>
<td width="280" ><u><b>Message</b></u></td>
<td width="181"  ><u><b>Time</b></u> </td>
</tr>
<%
	String str="";
	while(rs.next())
	{
			dd=rs.getString(6);
			dd1=d.getDate() +", " + (d.getYear()+1900);
			if(dd1.equals(dd.substring(10)))
			{
				dd=rs.getString(6).substring(0,5);
			}
			else
			{
				dd=rs.getString(6).substring(6);
			}
			str=rs.getString(4);
			
			if(str.length()>10)
			{	str=str.substring(0,10)+"...";
			}
				
		 if(from1.equals(rs.getString(2)))
		{
			flag1=rs.getInt(7);
			if(flag1==1)
			{
				
%>
			
				<tr bgcolor="#ffffff" > 
				<td style="border-bottom:1px dotted blue" ><font face="Century Schoolbook" color="blue"><b><%=rs.getString(5) %></b></font></td>
			<td style="border-bottom:1px dotted blue" ><font face="Century Schoolbook" color="blue"><b><a href="readmess1.jsp?mess=<%=rs.getString(1)%>" style="text-decoration:none"><%=rs.getString(3) %></a></b></font></td>
			<td style="border-bottom:1px dotted blue" ><font face="Century Schoolbook" color="blue"><b><%=str %></b></font></td>
			<td style="border-bottom:1px dotted blue" ><font face="Century Schoolbook" color="blue"><b><%=dd %></a></b></font></td>
			</tr>
<%
			}
			else
			{	
%>
				<tr bgcolor="#ffffff"> 
				<td style="border-bottom:1px dotted blue" ><font color="black"><%=rs.getString(5) %></font></td>
			<td style="border-bottom:1px dotted blue" ><font color="black"><a href="readmess1.jsp?mess=<%=rs.getString(1)%>" style="text-decoration:none"><%=rs.getString(3) %></a></font></td>
			<td style="border-bottom:1px dotted blue" ><font color="black"><%=str %></font></td>
			<td style="border-bottom:1px dotted blue" ><font color="black"><%=dd %></a></font></td>
			</tr>
<%
			}
 		
		}
	}
%>
	
<%		
		
	//} 
%>

<tr><td colspan="4"><img src="images/trback1.jpg" width="851"></td>
</tr>

<tr><td colspan="4" bgcolor="#00FFFF">

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