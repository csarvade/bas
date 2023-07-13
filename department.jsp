<%@page import="java.sql.*,java.lang.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>department</title><marquee><h1 style="color:#0000cc">Department Details</h1></marquee>
<style type="text/css">
<!--
.style5 {font-size: 14px; font-weight: bold; color: #FFFFFF; }
-->
</style>
</head>

<body>
<form action="/BAS/department.jsp" method="post">
<table width="345" border="1" align="center" bgcolor="#0099CC">

  <tr>
    <td width="178"><span class="style5">Department Name </span></td>
    <td width="151"><input type="text" value="" name="dname"/></td>
  </tr>
  <tr>
    <td  colspan="2"><input type="submit" value="submit" name="submit"/></td>
  </tr>
</table>
</form>
 <%
	
  		try {
       			String dname=request.getParameter("dname");
       					
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="insert into department(dname) values('"+dname+"')";
	    		
				PreparedStatement st=con.prepareStatement(query);
       		    int insert=0;
          		insert= st.executeUpdate();
     
       
	}catch(SQLException e)
{
    out.println(e);
}  
 
 catch(Exception e)
{
    out.println(e);
}  
 
%>
</body>
</html>
