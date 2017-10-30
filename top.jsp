 
<body background=images/background5.jpg >

<table border="0" width="893" height="68">
	<tr>
	  <td>&nbsp;</td>
	  <td height="31">&nbsp;</td>
	  <td height="31"><font color="#FFFFFF"><b>
	    <%
			if(session.isNew() || session== null)
			{
				response.sendRedirect("index.html");
			}	
	String uname=(String)session.getAttribute("uname");
	out.println("Hi, "+uname);
%>
	  </b></font></td>
	  <td height="31"><b><font color="#FFFFFF"><a href="signout.jsp"><b><font color="#FFFFFF">Sign Out</font></b></a> </td>
  </tr>
	<tr>
	  <td width="171">&nbsp;</td>
		<td height="31" width="386"><form name="form1" method="post" action="inboxsearch.jsp">
		  <input name="searchtext" type="text" size="33">
	        &nbsp;&nbsp;<input type="submit" name="Submit" value="Search Mail" style="font-family: Old English Text MT; font-weight: bold; border: 3px double #FF0000; background-color: #CC9900">
		</form></td>
		<td height="31" width="258"><font color="blue">&nbsp;</font></td>
		<td height="31" width="60">&nbsp;
	  </td>
	</tr>
</table>
</body>
