<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>

<title>security</title>
<style type="text/css">
<!--
.style7 {font-size: 16px; font-weight: bold; color: #FFFFFF; }
.style9 {
	color: #9900CC;
	font-weight: bold;
}
-->
</style>
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
 
 
  
  if(document.security.cardno.value==""){
	   alert("Please Enter valid Order Acceptance Number");
	   security.cardno.focus();
	   return false;
	 }
	 if(isNaN(document.security.cardno.value)==true)
      {
     alert("Card Number Should be Numeric value");
		security.cardno.focus();
		security.cardno.value="";
	   return false;	   
     }
	 if(document.security.name.value==""){
	   alert("Please Enter valid Name");
	   security.name.focus();
	   return false;
	 }
	 
	 
	  if(document.security.towhom.value==""){
	   alert("Please Enter Whom To Visit");
	   security.towhom.focus();
	   return false;
	 }
	  if(document.security.logintime.value==""){
	   alert("Please Enter valid Login Time");
	   security.logintime.focus();
	   return false;
	 }
	if(document.security.logouttime.value==""){
	   alert("Please Enter valid Log Out Time");
	   security.logouttime.focus();
	   return false;
	 }
	
	
	 

 }
 -->
 </script>
<marquee><font size="+2" color="#0099CC">Security Information</font></marquee>
</head>

<body>
<table align="center">
  <tr><td><font color="#FF0000">(All Fields Are Mandatory.)</font></td></tr></table>
<div align="right" class="style9"><a href="/BAS/Logout.jsp">Logout</a></div>
<form method="post" action="/BAS/security.jsp" name="security" onBlur="return valid();">

<table width="1157" border="1" align="center" bgcolor="#0099CC">
  <tr>
    <td width="144"><span class="style7">Card No:</span></td>
    <td width="144"><span class="style7"> Name: </span></td>
    <td width="187"><span class="style7">Type Of Visitor: </span></td>
    <td width="204"><span class="style7">Purpose: </span></td>
    <td width="144" class="style7">To Whom </td>
    <td width="144"><span class="style7">Login Time:</span></td>
    <td width="144"><span class="style7">Log Out Time </span></td>
  </tr>
  <tr>
    <td><input type="text" name="cardno" title="Please Enter Valid Card Number"/></td>
    <td><input type="text" value="" name="name" title="Please Enter Valid Name of Card User"/></td>
    <td><select name="typeofvisitor" title="Please Select Valid Type of Visitor">
      
	  <option value="visitor">Visitor</option>
	  <option value="employee">Employee</option>
      <option value="materialreturn/nonreturn">MaterialReturn/NonReturn</option>
      <option value="testbased">TestBased</option>
    </select></td>
    <td><select name="purpose" size="1">
  <option value="visiting">Visiting</option>
  <option value="employee">Employee</option>
  <option value="materialreturn/nonreturn">MaterialReturn/NonReturning</option>
  <option value="testbasedservice">TestBasedservice</option>
</select></td>
    <td><input type="text" value="" name="towhom" title="Please Enter Whom To Visit"/></td>
    <td><input type="text" value="" name="logintime" title="Please Enter Valid Login Time"/></td>
    <td><input type="text" value="" name="logouttime" title="Please Enter Valid Logout Time"/></td>
  </tr>
  <tr>
    <td colspan="7" align="center"><input type="submit" value="Save" name="Save" onBlur="return valid();"/></td>
  </tr>
</table>
</form>
 <% if(request.getMethod().equals("POST")){
	
  		try {
       			String cardno=request.getParameter("cardno");
       			String name=request.getParameter("name");
				String typeofvisitor=request.getParameter("typeofvisitor");
      			String purpose=request.getParameter("purpose");
        		String towhom=request.getParameter("towhom");
				String logintime=request.getParameter("logintime");
				String logouttime=request.getParameter("logouttime");
				
				
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="insert into security(cardno,name,typeofvisitor,purpose,towhom,logintime,logouttime) values('"+cardno+"','"+name+"','"+typeofvisitor+"','"+purpose+"','"+towhom+"','"+logintime+"','"+logouttime+"')";
	    		PreparedStatement st=con.prepareStatement(query);
       			
       			
				int insert=0;
          		insert= st.executeUpdate();
     
      
					
					
	}catch(SQLException e)
{
   // out.println(e);
}  
 
 catch(Exception e)
{
    //out.println(e);
} } 
 
%>
</body>
</html>
