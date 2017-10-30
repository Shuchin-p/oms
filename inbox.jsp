<html>
<head>
 
<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="jquery.dataTables.yadcf.js"></script>

<style>
.label {
  padding: 0px 10px 0px 10px;
	border: 1px solid #ccc;
	-moz-border-radius: 1em; /* for mozilla-based browsers */
	-webkit-border-radius: 1em; /* for webkit-based browsers */
	border-radius: 1em; /* theoretically for *all* browsers*/
}

.label.lightblue {
	background-color: #99CCFF;
}

#external_filter_container_wrapper {
  margin-bottom: 20px;
}

#external_filter_container {
  display: inline-block;
}
</style>  

<script>
$(document).ready(function(){
  $('#example').dataTable().yadcf([
		{column_number : 0},
	    {column_number : 1,  filter_type: "range_number_slider", filter_container_id: "external_filter_container"},
	    {column_number : 2, data: ["Yes", "No"], filter_default_label: "Select Yes/No"},
	    {column_number : 3, text_data_delimiter: ",", filter_type: "auto_complete"},
	    {column_number : 4, column_data_type: "html", html_data_type: "text", filter_default_label: "Select tag"}]);
});
</script>
<script type="text/javascript">
var checkflag = "false";
function check(field) {
  if (checkflag == "false") {
    for (i = 0; i < field.length; i++) {
      field[i].checked = true;
    }
    checkflag = "true";
    return "Uncheck All";
  } else {
    for (i = 0; i < field.length; i++) {
      field[i].checked = false;
    }
    checkflag = "false";
    return "Check All";
  }
}

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
			

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql:///website","root","root123");

		PreparedStatement ps=con.prepareStatement("select * from messdetail where to1=? order by messid desc");
		ps.setString(1,from1);
		ResultSet rs=ps.executeQuery();
%>
<form method="post" action="deleterecord.jsp"> 
<body id="yadcf_example">
    <div id="container">
     
      <table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="740">
	        <thead>
		



<tr><td colspan="4" bgcolor="wheat" style="border-bottom:1px dotted blue" height="23"><input type="checkbox" alt="Select " value="Check All" name="Select " onClick="this.value=check(this.form.cbox)"><font color=#000066><b>Select</b>

<tr><td colspan="4">&nbsp;</td>
</tr>
<tr bgcolor= wheat>
<th width="" ><u><b>From</b></u></th>
<th width="" ><u><b>Subject</b></u></th>
<th width="" ><u><b>Message</b></u></th>
<th width=""  ><u><b>Time</b></u> </th></tr>
	         
	        </thead>
	        <tbody>

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
				<td style="border-bottom:1px dotted blue" ><input type="checkbox" name="cbox" value="<%=rs.getString(1)%>"><font face="Century Schoolbook" color="blue"><b><%=rs.getString(5) %></b></font></td>
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
				<td style="border-bottom:1px dotted blue" ><input type="checkbox" name="cbox" value="<%=rs.getString(1)%>"><font color="black"><%=rs.getString(5) %></font></td>
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

<tr><td>&nbsp;</td>
<td></td><td></td><td></td></tr>

<tr><td>
 <input type="submit" value="Delete"><span class="Apple-style-span" style="border-collapse: separate; color: rgb(0, 0, 0); font-family: 'Times New Roman'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; font-size: medium; "></center>
	</td><td></td><td></td><td></td></tr>
		 
		


</tbody>
</table>
</div>
</body>
</form>
<%
}
catch(Exception e)
{
	out.println("Error: "+e);
}
%>