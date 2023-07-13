 <%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<HTML >
<HEAD>
 <TITLE>changepwd</TITLE>
	     <style type="text/css">
<!--
.style11 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #FFFFFF;
	font-weight: bold;
	
}
body {
	background-color: #F2F2F2;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style13 {color: #FFFFFF}
.style14 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; color: #FFFFFF; }
.style15 {
	color: #0099CC;
	font-weight: bold;
	font-size: 24px;
}
-->
         </style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></HEAD>
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
	 
     function validate()
   {
	conf = confirm("Are you sure you want to continue?");
	if (conf)
		document.submit=true;
	else
		return false;
  }
     function check(){
      var oldpassword=document.changepassword.password.value;
	  var newpassword=document.changepassword.newpassword.value;
	  var confirmpassword=document.changepassword.confirmpassword.value;
	  
	  if(oldpassword.length==""){
	    alert('Please Enter Your Old Password');
	    changepassword.password.focus();
		changepassword.password.value="";
	    return false;  
      }	
	  if(oldpassword.length!=""){
	      if(oldpassword.length > 15){
		     alert('Old Password must be lessthan 15 characters');
			 changepassword.password.focus();
			 changepassword.password.value="";
			 return false;
		   }
		}   if(newpassword.length==""){
		   alert('Please Enter New Password');
		   changepassword.newpassword.focus();
		   return false;
		  }	 
		  if(newpassword.length!=""){
		      if(newpassword.search(/^[\w ]+$/)== -1){
				      alert('Newpassword must be Alphanumeric');
					  changepassword.password.focus();
			          changepassword.password.value="";
				      return false;
				  }
		     if(newpassword.length > 15){
			    alert('New Password must be lessthan 15 characters');
				changepassword.newpassword.focus();
			    changepassword.newpassword.value="";
				return false;
			 }
		  }
		   if(confirmpassword.length==""){
		    alert('Please Enter Confirm Password');
			changepassword.confirmpassword.focus();
			return false;
		   }	 
		  if(confirmpassword.length!=""){
		     if(newpassword != confirmpassword){
			    alert('Invalid Confirm Password');
				changepassword.confirmpassword.focus();
			    changepassword.confirmpassword.value="";
			    return false;
			  }
		   }
	  }
  //--></script>
<BODY bgcolor="#FFFFFF">
<%! String user1; 
%>
<% user1=(String)session.getAttribute("user");
%>
	 <form action="/BAS/changepassword_code.jsp" onSubmit="return validate()" styleId="changepassword" name="changepassword" method="post" >
	  <table width="90%" height="10%" border="0" cellpadding="0" cellspacing="0" bgcolor="#F2F2F2">
    <tr>
      <td width="155" bgcolor="#F2F2F2"><font color=blue size="+1"> Welcome : <%=user1%></font></td>
      <td colspan="6" bgcolor="#F2F2F2"><div align="center"><span class="style15">Change Password</span></div></td>
      <td width="43" bgcolor="#F2F2F2"><a href="/BAS/Logout.jsp"><strong>Logout</strong></a>  </td>
    </tr>
 </table>	
		
	  
   		 	<table width="37%" height="20%" border="0"  align="center" cellpadding="1" cellspacing="1" bgcolor="#0099CC" id="midle_tbl">
				<tr align="center" height="5">
					<td height="5%" colspan="2" >
					 <input type="hidden" name="loginuser" value="<%=user1%>"/>
				  
					<input type="hidden" name="txtusername" value="<%=user1%>"/>
			  	    <h2><font color="#0099CC">&nbsp;&nbsp;&nbsp;C</font><font color="#0099CC">ord</font></h2></td>
		        </tr>	 
				
				<%String oldpassworderror="";
				   oldpassworderror =request.getParameter("oldpassworderror");
				  //System.out.ptintln("error: " +error);
				   if(!(oldpassworderror==null)){
				%>
				<tr align="left">
	 				 <td   valign="top" ><span class="style13"></span></td>
					 <td width="66%"  valign="top"  aligin="left" >
				       <span class="style11">Invalid Old Password!!! Please try again....</span> </td> 
				</tr>
				<%
				}
				%>
				
				<tr align="left" height="5%">
				  <td width="34%" height="22"  vlign="top"><span class="style14">User Name</span></td>
				  <td align="left" valign="top" >
			      <input type="text" name="txtusername"  readonly="true" value="<%=user1%>"/>				  </td>
			  </tr>	
				<% try{  String driver="com.mysql.jdbc.Driver";
      
	   String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       String user="root";
       String pasword="admin";
       Class.forName(driver);
	   String password=request.getParameter("password");
       Connection con=DriverManager.getConnection(connection,user,pasword);
	   String query="select * from signin where username='"+user1+"' and password=password ";
	   //out.println(query);
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery(query);
	   
	   String p="";
	   while(rs.next()){
	    p=rs.getString("password");  
	   }
	   %>
				<tr align="left" height="5%">
	 				 <td  width="34%" height="22" valign="top"  ><span class="style14">Current Password
					 </span></td>
					 <td align="left"  valign="top" >
			 	  <input type="text" name="password" onBlur="this.value=removeSpaces(this.value);" value="<%=p%>"/>				  </td> 
				</tr>
				<%
				  }
				  catch(Exception e){
                  out.println("jsp error"+e);
      }    
				
				%>
				<tr align="left" height="5%">
	 				 <td  width="34%" height="22" valign="top"  ><span class="style14">New Password
					 </span></td>
					 <td align="left"  valign="top" >
			 	  <input type="text" name="newpassword" onBlur="this.value=removeSpaces(this.value);" value=""/>				  </td> 
				</tr>
				<tr align="left" height="5%">
	 				 <td  width="34%" height="28" valign="top"  ><span class="style14">Confirm Password
					 </span></td>
					 <td align="left"  valign="top" >
			 	  <input type="text" name="confirmpassword" onBlur="this.value=removeSpaces(this.value);" value=""/>				  </td> 
				</tr>
				<tr align="left" height="75%">
	 				 <td height="39"   valign="top" ></td>
					 <td  valign="top"  aligin="left">&nbsp;&nbsp;&nbsp;
					  <input type="submit"style="width:50;height:25" name="operation" value="Save" onClick="return check();"/>
				  <input type="reset" style="width:50;height:25"  value="Cancel"/></td> 
			  </tr>
	  </table>
	
	
	</form>
</BODY>
</HTML>