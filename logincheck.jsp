<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.sql.*"%>

<html>
<head>
<title>logincheck</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">

<script type="text/javascript">
<%
     HttpSession ses=request.getSession();
     ses.setAttribute("distname","");
     ses.setAttribute("usertype","");
//     String error=(String)ses.getAttribute("error");

try{	
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 		Connection con = DriverManager.getConnection("Jdbc:Odbc:CrimeMapDSN");
 		Statement stmt = con.createStatement();
 		String distname= request.getParameter("distname");
      String usertype=request.getParameter("cmbusertype");
      String username=request.getParameter("txtusername");
      String password=request.getParameter("txtpassword");

      if(usertype.equals("Citizen"))
      {
	ses.setAttribute("distname",distname);
    ses.setAttribute("usertype",usertype);	
		
		response.sendRedirect("citizen_home.jsp");
		}
	else
	{	
      ResultSet rs=stmt.executeQuery("select * from login where username='" +username+ "' and usertype='" +usertype+ "' and password='" +password+ "' ");
	  if(rs.next())
	{    
	   
	ses.setAttribute("distname",distname);
    ses.setAttribute("usertype",usertype);	
	if(usertype.equals("Administrator"))
		response.sendRedirect("admin_home.jsp");
	else
		response.sendRedirect("operator_home.jsp");		
	}		
	else
	{	
	out.println("<script language=javascript> alert('Invalid Username or Password, Login Failed!')</script>");
	response.sendRedirect("homepage.jsp");
	}
	}	
	con.close();
	}			   
 catch(Exception e)
{
  out.println("ERROR : " +e);
}
%>
</script>
</head>
<body>
</body>
</html>
