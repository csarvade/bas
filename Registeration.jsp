<%@page import="java.sql.*,java.lang.*"%>
<html>

<head>
<style type="text/css">
<!--
.style3 {
	color: #cc0033;
	font-size: 30px;
}
.style12 {color: #0000FF}
.style15 {color: #FFFFFF; font-weight: bold; font-size: 18px; }
.style16 {color: #FFFFFF; }
.style17 {color: #FFFFFF; font-weight: bold; }
.style26 {
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
}
.style29 {font-size: 14px}
.style30 {color: #0099CC}
.style31 {color: #0099CC; font-weight: bold; font-size: 18px; }
.style32 {color: #FF0000}
-->
</style>


 <title>Registeration</title>
 <script language="javascript" type="text/javascript" src="javascripts/datetimepicker.js"></script>
</head>

<body align="center" >
<h2 align="center" class="style3"> REGISTRATION FORM </h2>

<table width="380" border="0" align="center">
  <tr>
    <td width="669" height="21" align="center"><span class="style32">(All Fields Are Mandatory.)</span></td>
  </tr>
</table>
<form method="post" action="" >
  <div align="right"><strong><a href="/BAS/Logout.jsp" class="style29">Logout</a>  </strong></div>
  <table width="1325" height="161" border="0" align="center" bordercolor="#0099CC" bgcolor="#990099">
  <tr><td height="24" colspan="4" bgcolor="#FFFFFF"><p align="center" class="style15 style30">Personal Detail : </p>    </td>
  </tr>
<tr>
	<td height="26"><p class="style15">Emp No.&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="" name="eno"/></p></td> 
	           
	<td><p class="style15">First Name&nbsp;&nbsp;<input name="fname" type="text" ></p>    </td>
	<td width="348"><p align="center" class="style15">Midle Name :&nbsp;
	    <input name="mname" type="text" ></p>    </td>
	<td width="303"><p align="center" class="style15">Last Name :&nbsp;&nbsp;<input name="lname" type="text" ></p>	</td>
</tr>

<tr>
<td height="26"><p class="style15">Sex: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <select name="sex" size="1" class="style12">
  	<option value="sex"></option>
      <option value="">male</option>
      <option>female</option>
      </select></p></td>
  <td><p class="style15">Dno&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" value="" name="dno"/></p></td>
  <td><p align="center" class="style15">Servicestartdate:&nbsp;
      <input type="text" name="servicestartdate"  readonly="true"/>
      <a href="javascript:NewCal('servicestartdate','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a></p>  </td>
  <td><p align="center" class="style15">Designation: <select name="typeofuser" size="1" id="typeofuser">
  		 <option value="typeofuser"></option>
	      <option value="chiefexecutive">ChiefExecutive</option>
	      <option value="fieldexecutive">FieldExecutive</option>
		  <option value="securityexecutive">SecurityExecutive</option>
        </select></p>     </td>
</tr>

<tr>
      <td height="22" colspan="4" bgcolor="#FFFFFF"><p align="center" class="style31">Contact Numbers &amp; Email-Id:</p></td>
</tr>
<tr> 
	  <td height="24"><p class="style15">Mob No.: &nbsp;&nbsp;<input name="mobno" type="text" ></p></td>
	      <td><p class="style15">Ph No. : &nbsp;&nbsp;&nbsp;&nbsp;
      <input name="phno" type="text" ></p></td>
          <td><p class="style15">Email-Id :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="eid" type="text" ></p></td>
      	  <td><p class="style15">&nbsp;&nbsp;</p></td>
</tr>
<tr>
	<td height="25"  colspan="4" bgcolor="#FFFFFF"><p  align="center"class="style31">Login Details : </p></td>
</tr></table>
<table align="center" bgcolor="#990099">
<tr>
	<td width="316"><div align="justify"><span class="style17">User Name</span></div></td>
	<td width="340"><div align="justify"><span class="style16"><input type="text" name="username" ><strong>@spl.com</strong></span></div></td>
<tr>	
<td colspan="2"><div align="justify"><span class="style26">Character Should Be Minimum 6 word Length and +,-,=,#,@,!%,^,..&amp;soon, Special sybols are not allowed at first Letter.</span></div></td>
</tr>
<tr>
	<td><p align="justify" class="style17"> Password </p></td>
	  <td><p align="justify" class="style16"><input name="password" type="password"></p></td>
</tr>
<tr>
	<td><p align="justify" class="style17">Confirm Password </p></td>
	  <td><p align="justify" class="style16"><input name="confpassword" type="password"></p></td>
</tr>
<tr>
	<td><div align="justify"><span class="style17">Date of Birth</span></div></td>
	<td><div align="justify"><span class="style16"><input name="dob" type="text" readonly="true"/><a href="javascript:NewCal('dob','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a> <strong>dd/mm/yy</strong></span></div></td>
</tr>

<tr>
  <td colspan="2"><input type="submit" name="RegisterMe" value="RegisterMe" onSelect="javascript:void(0)" onClick="window.open('/BAS/regpop.jsp','linkname','height=500,width=500,scrollbars=no')"/></td>
</tr>
<tr>
	<td height="25"  colspan="4" bgcolor="#FFFFFF"><p  align="center"class="style31"> Thank You </p></td>
</tr>
</table>
</form>
 <%
       try {  
	   String fname=request.getParameter("fname");
	   String mname=request.getParameter("mname");
	   String lname=request.getParameter("lname");
       String sex=request.getParameter("sex");
	   String servicestartdate=request.getParameter("servicestartdate");
	   String mobno=request.getParameter("mobno");
       String phno=request.getParameter("phno");
	   String eid=request.getParameter("eid");
	   String dob=request.getParameter("dob");
	   String eno=request.getParameter("eno");
	   String dno=request.getParameter("dno");
	  
	   
	   
       String username=request.getParameter("username");
       String password=request.getParameter("password");
       String  typeofuser=request.getParameter("typeofuser");
	   String  status=request.getParameter("status");   
	   
	   String driver="com.mysql.jdbc.Driver";
       String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       String user="root";
       String pasword="admin";
       Class.forName(driver);
       Connection con=DriverManager.getConnection(connection,user,pasword);
        
	   
	   String query="insert into signin(username,password,typeofuser,status) values('"+username+"','"+password+"','"+typeofuser+"','pending')";
	   PreparedStatement st=con.prepareStatement(query);
       					
				int insert=0;
          		insert= st.executeUpdate();
    		
	        
       String quer="insert into registration(username,fname,mname,lname,sex,servicestartdate,mobno,phno,eid,eno,dob,dno) values('"+username+"','"+fname+"','"+mname+"','"+lname+"','"+sex+"','"+servicestartdate+"','"+mobno+"','"+phno+"','"+eid+"','"+eno+"','"+dob+"','"+dno+"')";
	   PreparedStatement st2=con.prepareStatement(quer);
       						
				int insert2=0;
          		insert2= st2.executeUpdate();
     
      
 
 }
  catch(SQLException e)
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
