<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>inbox2</title>
<script>
function disp2()
{
//alert("called");
f1.action="delete.jsp";
f1.submit();

}
function disp1()
{
//alert("called");
f1.action="reply.jsp";
f1.submit();


}



</script>

<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #000000}
.style4 {color: #FFFFFF; font-weight: bold; }
.style5 {color: #99CC00}
-->
</style>
</head>

<body>
<form name="f1" >
<span class="style5">
<marquee>
<font size="+2">Wel * Come To Chief Executive Mail</font>
</marquee>
</span>
<p align="right" class="style5"><a href="/BAS/Logout.jsp"><strong>Logout</strong></a></p>
<%!
String description;
%>
<%
	
  		try {
       			String subject=request.getParameter("t1");
				String user1=(String)session.getAttribute("user");
				String username =(String)session.getAttribute("username");
       			String day=(String)session.getAttribute("day");
				String date=(String)session.getAttribute("date");
				String flag=(String)session.getAttribute("flag");
				//String description=(String)session.getAttribute("description");
				
				
        		
				
				session.setAttribute("sub",subject);
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="select description from timesheet where username="+"'"+username+"' and subject="+"'"+subject+"'";
	    	PreparedStatement st=con.prepareStatement(query);
					ResultSet rs = st.executeQuery(query);
       			
               while(rs.next())
			   {
			   
			    description=rs.getString(1);
			   }	
			   			
       			%>
				
				<table border="3" align="center" bgcolor="#0099CC">
				
				<tr>
				<td width="122"><span class="style4">
				From
				</span></td>
				<td width="600">
				  <span class="style1"><input type="text" value="<%=username%>" size="100"/>
				  </span></td>
				</tr>
				
				<tr>
				<td><span class="style4">
				Subject
				</span></td>
				<td>
				  <span class="style1"><input type="text" value="<%=subject%>" size="100" />
				  </span></td>
				</tr>
<tr>
				<td><span class="style4">
				Date
				</span></td>
				<td>
				  <span class="style1"><input type="text" value="<%=date%>" size="100"/></span></td>
				</tr>
<tr>
				<td><span class="style4">
				Day
				</span></td>
				<td>
				  <span class="style1"><input type="text" value="<%=day%>" size="100"/></span></td>
				</tr>
				<tr>
				<td height="327"><span class="style4">
			Description
				</span></td>
				<td><span class="style2">
				  <textarea name="description" cols="76" rows="20">
				
				<%=description%>
				</textarea>
				  </span> </td>
				</tr>
				</table>
				
				<%
				 String query1="update timesheet set flag=r where username="+"'"+username+"' and subject="+"'"+subject+"'";;
                 PreparedStatement st1=con.prepareStatement(query1);
				int insert=0;
          	insert= st1.executeUpdate();
     
       
					
					
	}catch(SQLException e)
{
    //out.println(e);
}  
 
 catch(Exception e)
{
    //out.println(e);
}  
 
%>
<center>
<input  type="button" value="REPLY"  name="b1" onClick="disp1()" />
<input  type="button" value="DELETE"  name="b2" onClick="disp2()" />
</center>
</form>
</body>
</html>
