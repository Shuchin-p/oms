<%@page import="java.sql.*,java.io.*" %>
 <%

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql:///website","root","root123");
%>