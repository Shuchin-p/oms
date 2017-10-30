<html>
<%
	String mess1= request.getParameter("mess1");
	String mess2= request.getParameter("mess2");
	String from1= (String)session.getAttribute("uname");
	
	 
%>	
<style type="text/css">
<!--
.style4 {
	font-size: 24px;
	color: #330033;
}
.style6 {font-size: 24px}
.style7 {font-size: 24px; font-style: italic; }
.style8 {
	color: #000033;
	font-weight: bold;
	font-style: italic;
}
-->
</style>
<script language="javascript">
function asd()
{
	document.f1.action="draft.jsp";
	document.f1.submit();
}
function def()
{
	document.f1.to.value="<%= mess1 %>";
	document.f1.subject.value="<%= "Re: "+ mess2 %>";
}	
</script>
 <body onload="def()">
<form action="messageinsert.jsp" method="POST"  name="f1" >
<table width="79%" border="0" cellpadding="0" cellspacing="0" align="left" bgcolor="#330033" >
<tr><td height="34"  colspan="2" bgcolor="#330033">
	<input type="submit" value="send" name="B1" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat"> 
	<input type="reset" value="Reset" name="B2" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat">
  <input type="button" value="Save Now" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat" onClick="asd()"></td>
</tr>
	<tr>
		<td height="76"  bgcolor="#000080">&nbsp;<b><font color="#FFFFFF">To
		</font></b> 	</td>	  
			  <td bgcolor="#000080">
				<input type="text" name="to" id="to"  size="80" height="60"></td></tr>
			  <tr>
			  <td height="38" bgcolor="#000080"><font color="#FFFFFF"><b>Subject</b></font></td> 
			<td bgcolor="#000080"><input type="text" name="subject" size="80"></td></tr>
			<tr> 
			<td bgcolor="ffffff" colspan="2">
			<textarea rows="15" name="message" cols="82"></textarea></td></tr>
			<tr>
			  <td height="37" colspan="2" bgcolor="#330033">
			 <input type="submit" value="send" name="B1" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat"> 
	<input type="reset" value="Reset" name="B2" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat">
  <input type="button" value="Save Now" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat" onClick="asd()"></td>
			 
		</td></tr>
		<p></td>
	</tr>
	<tr><td colspan="2"> </td>
</table>

</form>
 
</body>
</html>