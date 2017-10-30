<%@page import="java.sql.*" %>
<%
	 
	String from1= (String)session.getAttribute("uname");
	String editFlag=request.getParameter("editFlag");
	String updatedCont=request.getParameter("contactVal");

	String contId=request.getParameter("contId");
	//out.println("editFlag=" + editFlag);
	//out.println("updatedCont=" + updatedCont);
	//out.println("contId="+contId);
	
    try
	{
			%>
				
				<%@ include file="connection.jsp" %> 
				
				<%

		if(editFlag != null && editFlag.equals("true")){
			
		PreparedStatement pstatement=con.prepareStatement("update contactdetail set email='"+updatedCont+"' where contactid="+contId);
		  
		 //pstatement.setString(1,updatedCont);
		 // pstatement.setInt(1,Integer.parseInt(contId));
		 
		  
		 pstatement.executeUpdate();
		
		}

		PreparedStatement ps=con.prepareStatement("select * from contactdetail where name = ?" );

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
<form method="post" action="editContact1.jsp" name="contShowForm"> 

 
    
<input type="hidden" name="contValue" id="contValue" />
<!--<table height="36" width="957" cellspacing="0" cellpadding="0" >

<tr><td colspan="4"><img src="images/inbox.jpg" width="959" height="22"></td>
</tr>
<tr bgcolor= wheat>
<td width="75%">
<u><strong>Contact</strong></u></td>
<td width="25%">
<u><b>Action</b></u></td></tr>-->
<body id="yadcf_example">
    <div id="container">
     
      <table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="744">
	        <thead>
		<tr><td colspan="4">&nbsp;</td>
</tr>
<tr bgcolor= wheat>
<th width="75%">
<u><strong>Contact</strong></u></th>
<th width="25%">
<u><b>Action</b></u></th></tr>
	         
	        </thead>
	        <tbody>



<%
	String str="";
	while(rs.next())
	{
				
				
			
		
				
%>
			<tr>
			 
			<td><%=rs.getString(3)%></td>
			
			<td ><input type="button" value="Edit" id="editbtn" name="editbtn" onclick='editContact("<%=rs.getString(1) %>", this.form)'></td>
			
			
			
			
			</tr>
			
<%
		
		
		
	} 
%>
</tr>


<tr><td colspan="">&nbsp;</td>
<td></td>
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