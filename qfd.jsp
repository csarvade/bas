<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>qfd</title>
<style type="text/css">
<!--
.style2 {color: #FFFFFF}
.style4 {color: #FFFFFF; font-weight: bold; }
.style5 {
	font-weight: bold;
	color: #0000CC;
}
-->
</style>
<marquee behavior="alternate"><font size="+2" color="#0099CC">Quotation Information</font></marquee>
<script language="javascript" type="text/javascript" src="javascripts/datetimepicker.js"></script>
<!--<script type="text/javascript" src="scw.js"></script>-->
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
 
  if(document.qfd.qno.value==""){
	   alert("Please Enter valid Quotation Number");
	   qfd.qno.focus();
	   return false;
	 }
	 if(isNaN(document.qfd.qno.value)==true)
      {
     alert("Quotation Number Should be Numeric value");
		qfd.qno.focus();
		qfd.qno.value="";
	   return false;	   
     }
	 if(document.qfd.date.value==""){
	   alert("Please Enter valid Quotation Date");
	   qfd.date.focus();
	   return false;
	 }
	 if(document.qfd.qdetail.value==""){
	   alert("Please Enter valid Quotation Detail");
	   qfd.qdetail.focus();
	   return false;
	 }
	 if(document.qfd.sendby.value==""){
	   alert("Please Enter Sent Person Name");
	   qfd.sendby.focus();
	   return false;
	 }
	 if(document.qfd.modeofdispatch.value==""){
	   alert("Please Enter valid Mode of Dispatch Done");
	   qfd.modeofdispatch.focus();
	   return false;
	 }
	 if(document.qfd.sendto.value==""){
	   alert("Please Enter Quotation Receiver Name");
	   qfd.sendto.focus();
	   return false;
	 }
	 if(document.qfd.review.value==""){
	   alert("Please Enter valid Review");
	   qfd.review.focus();
	   return false;
	 }
	}
	 -->
</script>
</head>

<body>
<form method="post" action="/BAS/qfd.jsp" name="qfd" onBlur="return valid();">
<table align="center">
  <tr><td><font color="#FF0000">(All Fields Are Mandatory.)</font></td></tr></table>
<p align="right"><span class="style5"><a href="/BAS/Logout.jsp">Logout</a></span></p>
<table width="1064" border="1" align="center" bgcolor="#0099CC">
  <tr>
    <td width="148" height="64"><span class="style4">Quotation No. </span></td>
    <td width="196"><span class="style4">Date</span></td>
    <td width="146"><p class="style4">Quatation Details </p>      </td>
    <td width="146"><span class="style4">Send By</span></td>
    <td width="146"><span class="style4">Mode Of dispatch </span></td>
    <td width="146"><span class="style4">Send To </span></td>
    <td width="90"><p align="center" class="style2"><strong>Reviews</strong></p></td>
  </tr>
  <tr>
    <td><input name="qno" type="text" id="qno" value="" onBlur="return valid();" title="Please Enter Valid Quotation Number"/></td>
    <td>&nbsp;<!--<input name="date" type="text" id="date" onClick='scwShow(this,event);'value='' readonly="true"/>--><input name="date" type="text" id="date"  readonly="true" onBlur="this.value=removeSpaces(this.value);"/><a href="javascript:NewCal('date','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></td>
    <td><input name="qdetail" type="text" id="qdetail" value="" onBlur="this.value=removeSpaces(this.value);" title="Please Enter Valid Quotation Details"/></td>
    <td><input name="sendby" type="text" id="sendby" value="" title="Please Enter Valid Send By"/></td>
    <td><input name="modeofdispatch" type="text" id="modeofdisp onBlur="this.value=removeSpaces(this.value);"atch" value="" title="Please Enter Valid Mode of Dispatch"/></td>
    <td><input name="sendto" type="text" id="sendto" value="" onBlur="this.value=removeSpaces(this.value);" title="Please Enter Valid Send To"/></td>
    <td><select name="review" size="1" class="style12" id="review" onBlur="this.value=removeSpaces(this.value);" title="Please Select Review"/>
          <option>First</option>
          <option>Second</option>
		  <option>Third</option>
          <option>Final</option>
          </select></td>
    </tr>
	<tr>
    <td colspan="7"><input type="submit" value="submit" name="submit" onClick="return submit" onBlur="return valid();"/></td>
	</tr>
</table>
</form>
       <%
	
  		try {
       			String qno=request.getParameter("qno");
       			String date=request.getParameter("date");
				String qdetail=request.getParameter("qdetail");
      			String sendby=request.getParameter("sendby");
        		String modeofdispatch=request.getParameter("modeofdispatch");
		        String sendto=request.getParameter("sendto");
				String review=request.getParameter("review");
				
				
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
				PreparedStatement st=null;
				//con.setAutoCommit(true);
       			String query="insert into quotationfollowupdetailsheet(qno,date,qdetail,sendby,modeofdispatch,sendto,review) values('"+qno+"','"+date+"','"+qdetail+"','"+sendby+"','"+modeofdispatch+"','"+sendto+"','"+review+"')";
	    	
			
			st=con.prepareStatement(query);
			
       		int insert=0;
          	insert= st.executeUpdate();
			
			if(insert>=1){
       
          
         			}
  	

     
      
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
