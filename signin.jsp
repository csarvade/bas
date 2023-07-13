<%@page import="java.sql.*,java.lang.*"%>
<html>
<head><title>signin</title>
<h1 align="center"><img src="a.jpeg" width="574" height="80">&nbsp;</h1>
<h1 align="center"><font color="#0000FF" size="+7">Shanthala Power Limited</font></h1>
<script type="text/javascript" language="JavaScript">
 <!--
      //remove spaces

  function removeSpaces(string) {
	var tstring = "";
	string = '' + string;
	splitstring = string.split(" ");
	for(i = 0; i < splitstring.length; i++)
	tstring += splitstring[i];
	return tstring;
 }
 
        function check(){
	  
	     var username=document.signin.username.value;
	     var password=document.signin.password.value;
         

	      if(username.length!=""){
	          if(username.length > 30){
		        alert('User Name must be lessthan 30 charectors');
				signin.username.focus();
	            signin.username.value="";
		        return false;
		      }
		 
	       if(password.length!=""){
		      if(password.length >15){
		          alert('Password must be lessthan 15 charectors');
				  signin.password.focus();
	              signin.password.value="";
			      return false;
			  }
		    return true;
		   }
		   //else of password:blanck check
		 else{
		      alert('Please Enter Password');
			  signin.password.focus();
	            return false;
		    }
		 
	    return true;
	  }
	   //else of user:blanck check 
	  else{
		 alert('Please Enter User Name');
		 signin.username.focus();
	     return false;
		}
		
	}//end of function check	
	 
 
 //--></script>
</head>

<body>
<form method="post" action="/BAS/signin.jsp" name="signin" onSubmit="return check();">
<table width="1089" border="0" align="center" bgcolor="#0099CC">
  <tr>
    <td height="32" align="center"><strong><font color="#FFFFFF">Wel-Come</font></strong></td>
  </tr>
</table>
<center>
  
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1084" height="109" align="top" title="p">
      <param name="movie" value="img.swf">
      <param name="quality" value="high">
      <param name="BGCOLOR" value="#F2F2F2">
      <embed src="img.swf" width="1084" height="109" align="top" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" bgcolor="#F2F2F2"></embed>
    </object>
 
  </center>


<table width="1086" border="0" align="center" bgcolor="#0099CC">
  <tr>
    <td width="1089" height="26" align="center"><strong><font color="#FFFFFF">SignIn Here</font></strong></td>
  </tr>
</table>
<table align="center">
  <tr><td><font color="#FF0000">(All Fields Are Mandatory.)</font></td></tr></table>
<table width="260" height="141" border="0" align="center" bgcolor="#990099">
  <tr>
    <td width="92"><strong><font color="#FFFFFF">Username:</font></strong></td>
    <td width="158"><font color="#FFFFFF"><input type="text" name="username" value="" onBlur="this.value=removeSpaces(this.value);"/>
    </font></td>
  </tr>
  <tr>
    <td><strong><font color="#FFFFFF">Password:</font></strong></td>
    <td><font color="#FFFFFF"><input type="password" name="password" value="" onBlur="this.value=removeSpaces(this.value);" />
    </font></td>
  </tr>
  <tr>
	<td><strong><font color="#FFFFFF">Type of user:</font></strong></td>
		<td><strong><font color="#FFFFFF">
		  
		    <select name="typeofuser">
			<option value="typeofuser"></option>
			 <option value="admin">Admin</option>
		      <option value="chiefexecutive">ChiefExecutive</option>
		      <option value="fieldexecutive"> FieldExecutive</option>
			  <option value="securityexecutive"> SecurityExecutive</option>
	        </select>
	      
    </font></strong></td>
	</tr>
		
<tr>
          <td colspan="2"><strong><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="submit" name="submit" value="submit">
           <input type="reset" value="reset">
      </font></strong></td>
	</tr> 
	<tr><td colspan="2"><strong><a href="Registeration.jsp"><font color="#FFFFFF" size="2">New User Register Here</font></a></strong></td>
	</tr>	 
</table>

</form>
<%
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";
String dbName = "businessanalyzingsystem";
String driver = "com.mysql.jdbc.Driver";
String usernam = "root"; 
String userPassword = "admin";
String user = "";

try 
{
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String typeofuser=request.getParameter("typeofuser");
	String status=request.getParameter("status");
	
  Class.forName(driver).newInstance();
  conn = DriverManager.getConnection(url+dbName,usernam,userPassword);
  Statement st = conn.createStatement();
  
  String queryString = "select * from  signin where username='"+username+"' and password='"+password+"' and typeofuser='"+typeofuser+"' and status='active' ";
  //out.println(queryString);
  //System.out.println(queryString);

  ResultSet rs = st.executeQuery(queryString);
 		
  while(rs.next())
  {
   	username=rs.getString("username");
	password=rs.getString("password"); 
	typeofuser=rs.getString("typeofuser");
  	status=rs.getString("status");
    if(username.equals(""))
    {
      response.sendRedirect("/BAS/signin.jsp");
	  
	}
	else{
      if( username.equals("admin") &&  password.equals(password) && typeofuser.equals("admin") && status.equals("active"))
	  {
	  	response.sendRedirect("/BAS/views/adminhome.jsp");  
		
	  }
	
	 	if(typeofuser.equals("chiefexecutive") && status.equals("active"))
	  {
	  	response.sendRedirect("/BAS/views/chiefexecutivehome.jsp");
	  }
	  if(typeofuser.equals("fieldexecutive") && status.equals("active"))
	  {
	  	response.sendRedirect("/BAS/views/fieldexecutivehome.jsp");
	  }
	  if(typeofuser.equals("securityexecutive") && status.equals("active"))
	  {
	  	response.sendRedirect("/BAS/views/securityexecutivehome.jsp");
	  }
	  
    }}//conn.close();
	 	
  }catch(SQLException e)
{
   // out.println(e);
}
 catch(Exception e)
{
    //out.println(e);
}  

%>
</body>
</html>



