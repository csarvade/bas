<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>
<script type="text/javascript">
<!--


-->
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>updatefes</title>
<style type="text/css">
<!--
.style2 {
	font-size: 18px;
	color: #990099;
}
.style3 {
	color: #990099;
	font-size: 24px;
}
.style5 {color: #0000FF}
.style7 {color: #FFFFFF; font-weight: bold; }
.style8 {color: #FFFFFF}
-->
</style><marquee><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="393" height="27" title="s">
  <param name="BGCOLOR" value="" />
  <param name="movie" value="../text3.swf" />
  <param name="quality" value="high" />
  <embed src="../text3.swf" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="393" height="27" ></embed>
</object></marquee>
</head>

<body>
<form method="post" action="/BAS/update/updatefescode.jsp">
<p align="right"><a href="/BAS/reply3.jsp"><strong>Reply</strong>&nbsp;<a href="/BAS/delete1.jsp"><strong>Delete</strong></a>&nbsp;<a href="/BAS/Logout.jsp"><strong>Logout</strong></a></p>
<%! String username;
String code; 
%>

<% try{
       
	   String user1=(String)session.getAttribute("user");
				 username =(String)session.getAttribute("username");
                 code=(String)session.getAttribute("eno");
	   //fes
	   String sno=request.getParameter("cmpid");
        String zone="";
		String date=(String)session.getAttribute("date");
		String day=(String)session.getAttribute("day");
		String description=(String)session.getAttribute("description");
		//mg
       String day1="";
	   String date1="";
	   String personalvisit="";
       String telemarketing="";
	   String callreceived="";
	   //pv
	   String time="";
	   String company="";	   
	   String typeofservice="";
	   String noofemps="";
	   String contactedto="";
	   String discussiondetail="";
	   String requirement="";
	   String review="";
	   //tm
	   String time1="";
	   String cname="";
	   String typeofservice1="";
	   String noofemps1="";
	   String mobno="";
	   String discussiondetail1="";
	   String requirement1="";
	   String review1="";
	   //cr
	   String time2="";
	   String callrecipient="";
	   String cname1="";
	   String personname="";
	   String typeofservice2="";
	   String mobno1="";
	   String discussiondetail2="";
	   String requirement2="";
	   String review2="";
	   
	   
       String driver="com.mysql.jdbc.Driver";
       String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       String user="root";
       String pasword="admin";
       Class.forName(driver);
       Connection con=DriverManager.getConnection(connection,user,pasword);
        String q="select * from fieldexecutivesheet as a,marketing as b,personalvisit as c,telemarketing as d,callreceived as e WHERE a.sno=b.sno and a.sno=c.sno and a.sno=d.sno and a.sno=e.sno and  a.username='"+username+"' and a.date='"+date+"' and a.day='"+day+"' ";
		
		Statement st=con.createStatement();
	     ResultSet rs=st.executeQuery(q);
		 
       
		   while(rs.next()){
		      sno=rs.getString("a.sno");
			 username=rs.getString("a.username");
			  zone=rs.getString("a.zone");
			  date=rs.getString("a.date");
			   day=rs.getString("a.day");
			    description=rs.getString("a.description");
			  day1=rs.getString("b.day1");	
	    	  date1=rs.getString("b.date1");
	   		  personalvisit=rs.getString("b.personalvisit");
              telemarketing=rs.getString("b.telemarketing");
	   		  callreceived=rs.getString("b.callreceived");
			   
			  time=rs.getString("c.time");			   
	  		  company=rs.getString("c.company");	   
	   		  typeofservice=rs.getString("c.typeofservice");
	    	  noofemps=rs.getString("c.noofemps");
	          contactedto=rs.getString("c.contactedto");
	          discussiondetail=rs.getString("c.discussiondetail");
	    	  requirement=rs.getString("c.requirement");
	    	  review=rs.getString("c.review");
		
			  time1=rs.getString("d.time1"); 
	    	  cname=rs.getString("d.cname");
			  noofemps1=rs.getString("d.noofemps1");
			   typeofservice1=rs.getString("d.typeofservice1");
	    	  mobno=rs.getString("d.mobno");
	    	  discussiondetail1=rs.getString("d.discussiondetail1");
	    	  requirement1=rs.getString("d.requirement1");
	     	  review1=rs.getString("d.review1");
			   
			  time2=rs.getString("e.time2");	    
	    	  callrecipient=rs.getString("e.callrecipient");
	      	  cname1=rs.getString("e.cname1");
	    	  personname=rs.getString("e.personname");
			  typeofservice2=rs.getString("e.typeofservice2");
	          discussiondetail2=rs.getString("e.discussiondetail2");
	          requirement2=rs.getString("e.requirement2");
	          review2=rs.getString("e.review2");
			  mobno1=rs.getString("e.mobno1");
			   
			   
		   }
		   
		 
%>
<table width="751" height="80" border="1" align="center" background="Hors.gif">
  <tr>
    <td width="286"><strong>Code:</strong>
      &nbsp;
      <input type="text" value="<%=code%>" name="code" /></td>
    <td width="206"><strong>Name:</strong>
      <input name="username" type="text" id="username" value="<%=username%>"/></td>
    <td width="237"><strong>Zone:
    </strong>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  	  <input type="text" value="<%=zone%>" name="zone" /></td>
	</tr>
  <tr>
    <td height="46"><strong>Date:</strong>
      &nbsp;
      <input type="text" value="<%=date%>" name="date" /></td>
    <td><strong>Day:</strong>
	 <input type="text" value="<%=day%>" name="day" /></td>
    <td><strong>Description:</strong>
	<input type="text" value="<%=description%>" name="description" /></td>
  </tr>
</table>

<p>&nbsp;</p>
<table width="760" border="1" align="center" bgcolor="#0099CC">
  <tr>
    <td colspan="6"><p align="center" class="style3"> <span class="style8">Marketting </span></p></td>
    </tr>
  <tr>
    
    <td width="112"><span class="style7">Day </span></td>
    <td width="166"><span class="style7">Date</span></td>
    <td width="135"><span class="style7">PersonalVisit</span></td>
    <td width="147"><span class="style7">Tele-Marketing</span></td>
    <td width="166"><span class="style7">Call-Received</span></td>
    </tr>
  <tr>
   
    <td><input type="text" value="<%=day1%>" name="day1"/></td>
    <td><input type="text" value="<%=date1%>" name="date1"  /></td>
    <td><input type="text" value="<%=personalvisit%>" name="personalvisit"  /></td>
    <td><input type="text" value="<%=telemarketing%>" name="telemarketing"  /></td>
    <td><input type="text" value="<%=callreceived%>" name="callreceived"  /></td>
  </tr>
</table>
<p align="center" class="style2">&nbsp;</p>
<table width="1354" height="98" border="1" align="center" bgcolor="#0099CC">
  <tr>
    <td colspan="8" class="style2"><div align="center"><span class="style8">Personal Visit </span></div></td>
    </tr>
  <tr>
  
    <td width="144"><span class="style7">Time</span></td>
    <td width="144"><span class="style7">Company</span></td>
    <td width="144"><span class="style7">Service
	Type</span></td>
    <td width="144"><span class="style7">No.of Employee`s</span></td>
    <td width="144"><span class="style7">ContactPerson
	Detail</span></td>
    <td width="144"><span class="style7">Discussion
	Details </span></td>
    <td width="144"><span class="style7">Requirements</span></td>
    <td width="144"><span class="style7">Reviews</span></td>
	</tr>
  <tr>
    
    <td><input type="text" value="<%=time%>" name="time"/></td>
    <td><input type="text" value="<%=company%>" name="company"/></td>
    <td><input name="typeofservice" type="text" id="typeofservice" value="<%=typeofservice%>"/></td>
    <td><input name="noofemps" type="text" id="noofemps" value="<%=noofemps%>"/></td>
    <td><input type="text"name="contactedto"  id="contactedto" value="<%=contactedto%>"/></td>
    <td><input type="text" name="discussiondetail"  id="discussiondetail" value="<%=discussiondetail%>"></td>
    <td><input name="requirement" type="text" id="requirement" value="<%=requirement%>"/></td>
    <td><input name="review" type="text" id="review" value="<%=review%>"/></td>
  </tr>
</table>
<p align="center" class="style2">&nbsp;</p>
<table width="949" height="81" border="1" align="center" bgcolor="#0099CC">
  <tr>
    <td colspan="9"><div align="center"><span class="style7">Tele-Marketing</span></div></td>
    </tr>
  <tr>
    
    <td width="40"><span class="style7">Time</span></td>
    <td width="48"><span class="style7">Company/Person Name</span></td>
    <td width="136"><span class="style7">Noof Emps </span></td>
    <td width="136"><span class="style7">Type Of Service </span></td>
    <td width="136"><span class="style7">Mobile/Phone Number </span></td>
    <td width="122"><span class="style7">DiscussionDetails</span></td>
    <td width="94"><span class="style7">Requirements</span></td>
    <td width="139"><span class="style7">Reviews</span></td>
	</tr>
  <tr>
    
    <td><input name="time1" type="text" id="time1" value="<%=time1%>"/></td>
    <td><input type="text" name="cname"  id="cname" value="<%=cname%>"></td>
    <td><input name="noofemps1" type="text" id="noofemps1" value="<%=noofemps1%>"/></td>
    <td><input name="typeofservice1" type="text"  value="<%=typeofservice1%>"/></td>
    <td><input name="mobno" type="text" id="mobno" value="<%=mobno%>"/></td>
    <td><input type="text" name="discussiondetail1" id="discussiondetail1" value="<%=discussiondetail1%>"> </td>
    <td><input name="requirement1" type="text" id="requirement1" value="<%=requirement1%>"/></td>
    <td><input name="review1" type="text" id="review1" value="<%=review1%>"/></td>
  </tr>
</table>
<p align="center" class="style2">&nbsp;</p>
<table width="668" height="78" border="1" align="center" bgcolor="#0099CC">
  <tr>
    <td colspan="10"><div align="center"><span class="style7">Call-Received</span></div></td>
    </tr>
  <tr>
    
    <td width="43"><span class="style7">Time</span></td>
    <td width="52"><span class="style7">By</span></td>
    <td width="52"><span class="style7">Company/Person Name</span></td>
    <td width="129"><p class="style7">Person Name</p>      </td>
    <td width="129"><span class="style7">Typeofservice</span></td>
    <td width="129"><span class="style7">Mobile/Phone Number </span></td>
    <td width="121"><span class="style7">DiscussionDetails</span></td>
    <td width="99"><span class="style7">Requirements</span></td>
    <td width="184"><span class="style7">Reviews</span></td>
  </tr>
    <tr>
    
    <td><input name="time2" type="text" id="time2" value="<%=time2%>"/></td>
    <td><input name="callrecipient" type="text" id="callrecipient" value="<%=callrecipient%>"/></td>
    <td><input type="text" name="cname1" id="cname1"  value="<%=cname1%>"></td>
    <td><input name="personname" type="text" id="personname" value="<%=personname%>"/></td>
    <td><input name="typeofservice2" type="text" value="<%=typeofservice2%>"/></td>
    <td><input name="mobno1" type="text" id="mobno1" value="<%=mobno1%>"/></td>
    <td><input type="text" name="discussiondetail2"  id="discussiondetail2" value="<%=discussiondetail2%>"> </td>
    <td><input name="requirement2" type="text" id="requirement2" value="<%=requirement2%>"/></td>
    <td><input name="review2" type="text" id="review2" value="<%=review2%>"/></td>
  </tr>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>
<%
		 
}catch(SQLException e){
   out.println("jsp error"+e);
 }
catch(Exception e){
   out.println("jsp error"+e);
 }
%> 
</body>
</html>
