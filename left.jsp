<%@page import="java.sql.*" %>
<%
	String from2= (String)session.getAttribute("uname");
	int flag2=1;
	int dd2=1;
    try
	{
				%>
				
				<%@ include file="connection.jsp" %> 
				
				<%
		PreparedStatement pstm=con.prepareStatement("select count(flag) from messdetail where to1=? and flag=? ");
		pstm.setString(1,from2);
		pstm.setInt(2,flag2);
		ResultSet rs1=pstm.executeQuery();
		rs1.next();
		
		dd2=rs1.getInt(1);
	}
	catch(Exception e)
	{
		out.print(e);
	}	
	
%>

<html>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<body >

 
<table width="96" cellspacing="0" boredr="0" cellpading="0" >
<tr><td valign="top" class="style1">
<a href = "compose1.jsp" style="text-decoration:none; color: #ffffff;"><strong>
<input type="button" value="Compose" style="font-family: Old English Text MT; font-weight: bold; border: 3px double #FF0000; background-color: #CC9900; width:108"></strong></a></td>
</tr>
<tr><td valign="top">
<a href = "inbox1.jsp" style="text-decoration:none; color:#FFFFFF"><strong>
<input type="button" value="Inbox" style="font-family: Old English Text MT; font-weight: bold; border: 8px double #FF0000; background-color: #CC9900; width:65; height:38">

<%
	if(dd2>0)
	{
		out.print("<font color=white>("+dd2+")</font>");
	}
%>	


</a>
</strong>





</td>

</tr>
<tr>
  <td height="22" valign="top"><a href = "sent1.jsp" style="text-decoration:none; color: #ffffff;"><strong>
  <input type="button" value="Sent" style="font-family: Old English Text MT; font-weight: bold; border: 8px double #FF0000; background-color: #CC9900; width:108"></strong></a></td>
  </strong></a></td>
</tr>
<tr>
  <td height="25" valign="top"><a href=showdraft1.jsp style="text-decoration:none; color: #ffffff;"><strong>
  <input type="button" value="Draft" style="font-family: Old English Text MT; font-weight: bold; border: 8px double #FF0000; background-color: #CC9900; width:108"></strong></a></td>
  </strong></a></td>
</tr>
<tr>
  <td height="25" valign="top"><a href=showContact1.jsp style="text-decoration:none; color: #ffffff;"><strong>
  <input type="button" value="Contact" style="font-family: Old English Text MT; font-weight: bold; border: 8px double #FF0000; background-color: #CC9900; width:108"></strong></a></td>
  </strong></a></td>
</tr>

<tr><td height="231" valign="top">  &nbsp;</td>
</tr>
</table>
</html>