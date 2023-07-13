<%@page import="java.sql.*,java.lang.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>inbox</title>

<%!

String s3,s4,s5,s6,s7,s8,s9,s10;
%>
<script>
 function disp(abc)
{
//alert(abc.value);
abc.form.t1.value=abc.value;
abc.form.action="inbox2.jsp";
abc.form.submit();


}



</script>

<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #99CC00}
-->
</style>
</head>

<body>
<span class="style2">
<marquee>
<font size="+2">Wel * Come To Chief Executive Mail</font>
</marquee>
</span> </span>
<p align="right" class="style5"><a href="/BAS/Logout.jsp"><strong>Logout</strong></a></p>
<%
	
  		try {
       			String s1=(String)session.getAttribute("user");
        		String s2="u";
			
				
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="select * from timesheet where to1="+"'"+s1+"' and flag!='d'";
	    		PreparedStatement st=con.prepareStatement(query);
       			
				
       			
			
          		ResultSet rs = st.executeQuery(query);
				%>
				<table  align="center" border="3" bgcolor="#0099CC">
				<tr>
				<th><span class="style1">USERNAME</span></th>
				<th><span class="style1">DAY</span></th>
				<th><span class="style1">DATE</span></th>
				<th><span class="style1">SUBJECT</span></th>
				<th><span class="style1">FLAG</span></th>
		</tr>
	<%			
				
     while(rs.next())
	 {
    	 s3=rs.getString(2);
		 s4=rs.getString(3);
		 s5=rs.getString(4);
		 s6=rs.getString(6);
		 s7=rs.getString(8);
		 
		 
		 %>
		 <tr>
		 <form name="f1" >
		 <td><span class="style1"><%=s3%></span></td>
		 <td><span class="style1"><%=s4%></span></td>
		 <td><span class="style1"><%=s5%></span></td>
		 <td><input name="b1" type="button" onClick="disp(this)" value="<%=s6%>" /></td>
		 <td><span class="style1"><%=s7%></span></td>
		 
		 <input type="hidden" name="t1"  />
		 </form>
		 </tr>
		 
		 
		 <%
		
		 }
		 %>
	</table>
	 <%
	    
		session.setAttribute("username",s3);
		session.setAttribute("day",s4);
		session.setAttribute("date",s5);
		session.setAttribute("flag",s7);			
					
	}catch(SQLException e)
{
    //out.println(e);
}  
 
 catch(Exception e)
{
    //out.println(e);
}  
 
%>
</body>
</html>
