<html>
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

	function getXMLObj() //XML OBJECT
	{
		var xmlhttpObj = false;
		try 
		{
			xmlhttpObj = new ActiveXObject("Msxml2.XMLHTTP") // For Old Microsoft Browsers
		}
		catch (e)
		{
			try
			{
				xmlhttpObj = new ActiveXObject("Microsoft.XMLHTTP") // For Microsoft IE 6.0+
			}
			catch (e2)
			{
				xmlhttpObj = false // No Browser accepts the XMLHTTP Object then false
			}
		}
		if (!xmlhttpObj && typeof XMLHttpRequest != 'undefined') 
		{
		xmlhttpObj = new XMLHttpRequest(); //For Mozilla, Opera Browsers
		}
	return xmlhttpObj; // Mandatory Statement returning the ajax object created
	}

	var xmlhttpObj = new getXMLObj();	//xmlhttp holds the ajax object

	function callAjax()
	{
		
//var getdate = new Date(); //Used to prevent caching during ajax call
				if(xmlhttpObj)
				{ 
					xmlhttpObj.open("GET","insertcontact.jsp?query=" + document.f1.to.value); //gettime will be the servlet name
					xmlhttpObj.onreadystatechange = handleServerRes;
					
					xmlhttpObj.send();
				}
			
	}
function handleServerRes()
	{
			if (xmlhttpObj.readyState == 4)
			{
					if(xmlhttpObj.status == 200) 
					{
//document.getElementById("disp").innerHTML=xmlhttp.responseText; //Update the HTML Form element 
				//document.getElementById("disp").innerHTML=xmlhttp.responseText;
					}
					else
					{
						alert("Error during AJAX call. Please try again");
					}
			}
	}


</script>
 

<form action="messageinsert.jsp" method="POST"  name="f1">
<table width="79%" border="0" cellpadding="0" cellspacing="0" align="left"   >
<tr><td height="34"  colspan="2"  >
	<input type="submit" value="send" name="B1" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat"> 
	<input type="reset" value="Reset" name="B2" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat">
  <input type="button" value="Save Now" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat" onClick="asd()"></td>
<%
String isDraft = request.getParameter("isDraft");
String draftId = request.getParameter("draftId");
try
	{
			%>
				
				<%@ include file="connection.jsp" %> 
				
				<%

		if(isDraft != null && isDraft.equals("true")){
		PreparedStatement ps= con.prepareStatement("select * from draft where messid=?");
		ps.setString(1,draftId);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
		%>
		
		 
</tr>
	<tr>
		<td height="76"  >&nbsp;<b><font color="#FFFFFF">To
		</font></b> <input type="hidden" name="fromDraft" value="yes" /> <input type="hidden" name="draftId" value=<%=rs.getString(1)%> /> 	</td>	  
			  <td  >
				<input type="text" name="to" id="to" size="80" height="60" onblur="callAjax();" value=<%=rs.getString(2)%> ></td></tr>
			  <tr>
			  <td height="38"  ><font color="#FFFFFF"><b>Subject</b></font></td> 
			<td  ><input type="text" name="subject" size="80" value=<%=rs.getString(3)%>></td></tr>
			<tr> 
			<td   colspan="2">
			<textarea rows="15" name="message" cols="82"><%=rs.getString(4)%></textarea></td></tr>
			

			<tr>


		
		<%
		
		}
		
		}else{
		%>
		 
</tr>
	<tr>
		<td height="76"  >&nbsp;<b><font color="#FFFFFF">To
		</font></b> 	</td>	  
			  <td >
				<input type="text" name="to" id="to" size="80" height="60" onblur="callAjax();"  ></td></tr>
			  <tr>
			  <td height="38" ><font color="#FFFFFF"><b>Subject</b></font></td> 
			<td  ><input type="text" name="subject" size="80"></td></tr>
			<tr> 
			<td   colspan="2">
			<textarea rows="15" name="message" cols="82"></textarea></td></tr>
			

			<tr>


		
		<%
		
		}
		
		
	}
	catch(Exception e)
	{
		out.println("Error : "+e);
	}
	

%>
			  <td height="37" colspan="2"  >
			 <input type="submit" value="send" name="B1" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat"> 
	<input type="reset" value="Reset" name="B2" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat">
  <input type="button" value="Save Now" style="font-family: Old English Text MT; font-size: 14pt; font-weight: bold; border: 1px outset #FFFFFF; background-color: wheat" onClick="asd()">
  <input type="text" name="attachment" size="57" value="<%= request.getAttribute("file1") %>"></td>
			 
		</td></tr>
		<p></td>
	</tr>
	<tr><td colspan="2"> </td>
</table>

</form>
 
<FORM name="f2" ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD=POST>
<table border="0"  width="596">
<tr><center><td colspan="2" align="center"><font color="#FFFFFF"><B>UPLOAD THE FILE</B></font></td></tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td><font color="#FFFFFF"><b>Choose the file To Upload:</b></font></td><td>
	<font color="#FFFFFF">
	<INPUT NAME="file" TYPE="file" style="font-weight: 700"></font></td></tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td colspan="2" align="center"><font color="#FFFFFF">
	<input type="submit" value="Send File" style="font-weight: 700"><b> </b>
	</font> </td></tr>
<tr><td colspan="2" align="center"><b><font color="#FFFFFF">First Upload the File Then send Message 
	</font></b> </td></tr>
<table>

</FORM>

</html>