<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%
	String name= (String)session.getAttribute("uname");
	String contactList=request.getParameter("query");
	 out.println("inside Ajsx " + contactList);
	
	try
	{
			%>
				
				<%@ include file="connection.jsp" %> 
				
				<%
			PreparedStatement ps=con.prepareStatement("select * from contactdetail");
			ResultSet rs=ps.executeQuery();
			


			boolean isExist=false;
			if(contactList != null && !contactList.equals("")){
				if(contactList.indexOf(",")==-1){
					if(rs != null){
						while(rs.next()){
							if(contactList.equals(rs.getString(3))){
								isExist=true;
							}
						}
						if(!isExist){
							PreparedStatement pstatement= con.prepareStatement("insert into contactdetail(email,name) values(?, ?)");
							pstatement.setString(1,contactList);
							pstatement.setString(2,name);
							pstatement.executeUpdate();
						}
					}
				}else{
					out.println("inside else");

					String[] contArray = contactList.split(",");
					out.println("contArr = " + contArray);
					for(int i=0; i<contArray.length; i++){
						while(rs.next()){
							if(contArray[i].equals(rs.getString(3))){
								isExist=true;
							}
						}
						if(!isExist){
							PreparedStatement pstatement= con.prepareStatement("insert into contactdetail(email,name) values(?, ?)");
							pstatement.setString(1,contArray[i]);
							pstatement.setString(2,name);
							pstatement.executeUpdate();
						}
					}
				}
			 }
	}
	catch(Exception e)
	{
		out.println("Error : "+e);
	}
	
%>
