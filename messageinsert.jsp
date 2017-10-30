<%@page import="java.sql.*,java.io.*" %>
 <%
	String to=request.getParameter("to");
	String subject=request.getParameter("subject");
	String message=request.getParameter("message");
		//String f1=request.getParameter("clientimg");
	String from=(String)session.getAttribute("uname");
	//out.println(f1);
	String fromDraft=request.getParameter("fromDraft");
	String draftId=request.getParameter("draftId");
	String attachment=request.getParameter("attachment");

	


	String date="";
	java.util.Date d = new java.util.Date();
	String day="";
		String month="";
		int flag=1;
		switch(d.getDay())
		{
			case 1:
					day="Monday";
					break;
			case 2:
					day="Tuesday";
					break;
			case 3:
					day="Wednesday";
					break;
			case 4:
					day="Thursday";
					break;
			case 5:
					day="Friday";
					break;
			case 6:
					day="Saturday";
					break;
			case 7:
					day="Sunday";
					break;
		}
		switch(d.getMonth())
		{
			case 0:
					month="January";
					break;
			case 1:
					month="February";
					break;
			case 2:
					month="March";
					break;
			case 3:
					month="April";
					break;
			case 4:
					month="May";
					break;
			case 5:
					month="June";
					break;
			case 6:
					month="July";
					break;
			case 7:
					month="August";
					break;
			case 8:
					month="September";
					break;
			case 9:
					month="October";
					break;
			case 10:
					month="November";
					break;
			case 11:
					month="December";
					break;
		}
	 date = d.getHours()+":"+  (d.getMinutes()<10 ? "0"+d.getMinutes():d.getMinutes())+" "+ month + ","+ d.getDate() +", " + (d.getYear()+1900);    
try
	{
%>
				
				<%@ include file="connection.jsp" %> 
				
				<%
		
				
			if(fromDraft != null && fromDraft.equals("yes")){
			PreparedStatement ps2= con.prepareStatement("delete from draft where messid=?");
			ps2.setString(1, draftId);
			ps2.executeUpdate();
			}
		
				
		PreparedStatement ps= con.prepareStatement("insert into messdetail(to1,subject,message,from1,date,flag,file1) values(?, ?, ?, ?, ?, ?, ?)");
		PreparedStatement ps1= con.prepareStatement("insert into sent(to1,subject,message,from1,date,flag,file1) values(?, ?, ?, ?, ?, ?, ?)");
		ps.setString(1,to);
		ps.setString(2,subject);
		ps.setString(3,message);
		ps.setString(4,from);
		ps.setString(5,date);
		ps.setInt(6,flag);
		ps.setString(7,attachment);
		ps1.setString(1,to);
		ps1.setString(2,subject);
		ps1.setString(3,message);
		ps1.setString(4,from);
		ps1.setString(5,date);
		ps1.setInt(6,flag);
		ps1.setString(7,attachment);
	           	ps1.executeUpdate();
	           	ps.executeUpdate();
		
%>
	<jsp:forward page="main.jsp" />
<%
	}
	catch(Exception e)
	{
		out.println("Error : "+e);
	}
	
%>	