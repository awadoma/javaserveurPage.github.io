<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
   <%@page import="java.sql.*"%>


   <%
try {
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String phone= request.getParameter("phone");
		String message= request.getParameter("message");
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdetails";
		String user = "root";
		String password= "zool/1985/ajeep/";
		
		Connection con=DriverManager.getConnection(url, user, password);
		
		PreparedStatement ps=con.prepareStatement("insert into contactform values(?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,phone);
		ps.setString(4,message);
		
		int s= ps.executeUpdate();
		if(s>0){
		%>
		<jsp:forward page="register.jsp"></jsp:forward>
		<% 
		}
		else{
		out.print("sorry!please fill correct detail and try again" );
		}
}
catch(Exception e){e.printStackTrace();
out.print("sorry!please fill correct detail and try again" );
}

%>