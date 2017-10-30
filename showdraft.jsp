<%@page import="java.sql.*" %>
<%
	 
	String from1= (String)session.getAttribute("uname");
	
	
    try
	{
			%>
				
				<%@ include file="connection.jsp" %> 
				
				<%

		PreparedStatement ps=con.prepareStatement("select * from draft where from1=? ");

		ps.setString(1,from1);
		ResultSet rs=ps.executeQuery();
		
		
%>


<script type="text/javascript">

function editContact(contVal,theForm){
	document.getElementById('contValue').value = contVal;
	theForm.submit();
}

</script>


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
<meta charset=utf-8 />
<title>yadcf - Yet Another DataTables Column Filter</title>
</head>
<form method="post" action="deletedraft.jsp"> 
<body id="yadcf_example">
    <div id="container">

 <table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="707">
<thead>
<tr><td colspan="3">&nbsp;</td>
</tr>
<tr bgcolor= wheat>
<th width="44%">
<u><strong>To</strong></u></th>
<th width="36%">
<u><b>Subject</b></u></th>
<th width="20%">
<u>Message</u></th></tr>
	         
	        </thead>
	        <tbody>



<%
		 int flag1=1;

	String str="";
	while(rs.next())
	{
				
			str=rs.getString(4);
			if(str.length()>10)
			{	str=str.substring(0,10)+"...";
			}
				
		 if(from1.equals(rs.getString(5)))
		{
			
				flag1=rs.getInt(7);
			if(flag1==1)
			{
				
%>


			

			<tr>
			 
			<td><input type="checkbox" name="cbox" value="<%=rs.getString(3)%>"><%=rs.getString(2) %></td>
			<td><a href="readdraft1.jsp?mess=<%=rs.getString(1)%>" style="text-decoration:none"><%=rs.getString(3) %></a></td>
			<td ><%=str %></td>

			</tr>
			
<%
		
			}
			else
			{
				
%>
			<tr>
			 
			<td><input type="checkbox" name="cbox" value="<%=rs.getString(3)%>"><%=rs.getString(2) %></td>
			<td><a href="readdraft1.jsp?mess=<%=rs.getString(1)%>" ><%=rs.getString(3) %></a></td>
			<td><%=str %></td>
			
			</tr>
<%			
		
			}
		}
		
	} 
%>
<!--<tr><td colspan="3"><img src="images/trback1.jpg" width="961"></td>
</tr>-->

<tr><td>
 <input type="submit" value="Delete"></td><td></td><td></td>
		 
	</tr>

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