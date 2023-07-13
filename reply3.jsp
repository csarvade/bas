<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>reply3</title>
<script>
function disp1()
{
//alert("called");
f1.action="reply4.jsp";
f1.submit();

}



</script>

<style type="text/css">
<!--
.style3 {color: #FFFFFF; font-weight: bold; }
.style4 {color: #999900}
.style5 {color: #99CC00}
.style6 {color: #FFFFFF}
-->
</style>
<script language="javascript" type="text/javascript" src="javascripts/datetimepicker.js"></script>
</head>

<body>
<form name="f1" >
  <span class="style4"> <span class="style5">
  <marquee>
  <font size="+2">Wel * Come To Field Executive Mail</font>
  </marquee>
  </span> </span>
<p align="right"><a href="/BAS/Logout.jsp"><strong>Logout</strong></a></p>
<%
	
  		try {
       			//String subject=request.getParameter("t1");
				//String user=(String)session.getAttribute("user");
				String username =(String)session.getAttribute("username");
       			//String day=(String)session.getAttribute("day");
				//String date=(String)session.getAttribute("date");
				//String flag=(String)session.getAttribute("flag");
			
				
						
				//session.setAttribute("sub",subject);
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			//String query="select description from timesheet where username="+"'"+username+"' and subject="+"'"+subject+"'";
	    	//PreparedStatement st=con.prepareStatement(query);
			//		ResultSet rs = st.executeQuery(query);
       			
              /* while(rs.next())
			   {
			   
			   description=rs.getString(1);
			   }*/				
       			%>
				
				<table border="1" align="center" bgcolor="#0099CC">
				
				<tr>
				<td width="144"><span class="style3">To</span></td>
				<td width="600">
				
				<input name="username" type="text" value="<%=username%>" size="100" />				</td>
				</tr>
				
				<tr>
				<td><span class="style3">
				Subject
				</span></td>
				<td>
				<input   name="subject" type="text" size="100"  />				</td>
				</tr>
<tr>
				<td><span class="style3">
				Date
				</span></td>
	  <td>
				<input   name="date" type="text" size="75"  />
				<span class="style6">DD/MM/YYYY</span><a href="javascript:NewCal('date','ddmmyyyy')"> <img src="calendar.gif" alt="gr"></a></td>
				</tr>
<tr>
				<td><span class="style3">
				Day
				</span></td>
				<td>
				<select name="day" size="1" id="day" style="max-width:inherit">
	  <option>.....................................................................................Please Enter Day................................................................................</option>			
      <option>Monday</option>
      <option>Tuesday</option>
      <option>Wednsday</option>
      <option>Thursday</option>
      <option>Friday</option>
      <option>Saturday</option>
      <option>Sunday</option>
    </select>				</td>
				</tr>
				<tr>
				<td height="327"><span class="style3">
			Description
				</span></td>
				<td>
				
				<textarea  name="description" cols="76" rows="20" style="size:auto" title="Please Enter Your Text Here">
                				

				</textarea>				</td>
				</tr>
  </table>
				
				<%
				 
					
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
<input  type="button" value="SEND"  name="b1" onClick="disp1()" />
</center>

</form>
</body>
</html>
