<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>ts</title>
<style type="text/css">
<!--
.style5 {font-size: 20px; font-weight: bold; }
.style8 {color: #FFFFFF; }
-->
</style><marquee><font color="#0099CC"size="+2">Time Sheet</font></marquee>
<script language="javascript" type="text/javascript" src="javascripts/datetimepicker.js"></script>
<script language="javascript" type="text/javascript">
  function removeSpaces(string) {
	var tstring = "";
	string = '' + string;
	splitstring = string.split(" ");
	for(i = 0; i < splitstring.length; i++)
	tstring += splitstring[i];
	return tstring;
 }
 
 function valid()
 {
 
 
  
  if(document.ts.username.value==""){
	   alert("Please Enter valid User Name");
	   ts.username.focus();
	   return false;
	 }
	 
	 if(document.ts.date.value==""){
	   alert("Please Enter valid Date");
	   ts.date.focus();
	   return false;
	 }
	 
	 if(document.ts.description.value==""){
	   alert("Please Enter valid Description");
	   ts.description.focus();
	   return false;
	 }
	 
	  if(document.ts.to.value==""){
	   alert("Please Enter valid To Address");
	   ts.to.focus();
	   return false;
	 }
	  if(document.ts.subject.value==""){
	   alert("Please Enter valid Subject");
	   ts.subject.focus();
	   return false;
	 }
	

 }
 -->
 </script>
</head>

<body>
<form action="" method="post" name="ts" onBlur="return valid();">
<table width="814" height="217" border="1" align="center" cellpadding="10" cellspacing="5" bgcolor="#0099CC">
  <tr>
        <td width="120" height="49"><div align="center" class="style8"><span class="style5">USERNAME</span></div></td>

    <td width="155" height="49"><div align="center" class="style8"><span class="style5">DAY</span></div></td>
    <td width="103"><div align="center" class="style8"><span class="style5">DATE</span></div></td>
     <td width="146"><div align="center" class="style8"><span class="style5">DESCRIPTION</span></div></td>
    </tr>
  <tr>
    <td><input name="username" type="text" id="username" value="" title="Please Enter Valid User Name"/></td>
    <td height="41"><select name="day" size="1" title="Please Enter Valid Day">
      <option>Monday</option>
      <option>Tuesday</option>
      <option>Wednsday</option>
      <option>Thursday</option>
      <option>Friday</option>
      <option>Saturday</option>
      <option>Sunday</option>
    </select></td>
    <td>&nbsp;<input name="date" type="text" id="date"  readonly="true" title="Please Enter Valid Date"/><a href="javascript:NewCal('date','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a><span class="style8"><strong>dd/mm/yy</strong></span></td>
    <td><input type="text" name="description" id="description" value="" title="Please Enter Valid Description"/></td>
    </tr>
  <tr>
   <td><div align="center" class="style8"><span class="style5">TO:</span></div></td>
     
    <td><input type="text" value="" name="to" title="Please Enter Valid To Address"/></td>
     <td><div align="center" class="style8"><span class="style5">SUBJECT:</span></div></td>
    <td><input type="text" value="" name="subject" title="Please Enter Valid Subject"/></td>
  </tr>
  <tr>
    <td height="41" colspan="4"><input type="submit" name="send" value="send" onBlur="return valid();"/></td>
    </tr>
</table>
</form>
<%
	
  		try {
       			String username=request.getParameter("username");
       			String day=request.getParameter("day");
				String date=request.getParameter("date");
      			String to1=request.getParameter("to");
					String subject=request.getParameter("subject");
						String description=request.getParameter("description");
							String flag="u";
        		
				
				
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="insert into timesheet(username,day,date,to1,subject,description,flag) values('"+username+"','"+day+"','"+date+"','"+to1+"','"+subject+"','"+description+"','"+flag+"')";
	    		PreparedStatement st=con.prepareStatement(query);
       			
				
       			
				int insert=0;
          		insert= st.executeUpdate();
     
       
					
					
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
