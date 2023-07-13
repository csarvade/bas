<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>
<script language="javascript" type="text/javascript" src="javascripts/datetimepicker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>fes</title>
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
</style><marquee><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="211" height="17" title="s">
  <param name="BGCOLOR" value="#FFFFFF" />
  <param name="movie" value="text3.swf" />
  <param name="quality" value="high" />
  <embed src="text3.swf" width="211" height="17" quality="high" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" bgcolor="#FFFFFF" ></embed>
</object></marquee>
</head>

<body>
<table align="center">
  <tr><td><font color="#FF0000">(All Fields Are Mandatory.)</font></td></tr></table>
<p align="right"><a href="/BAS/Logout.jsp"><strong>Logout</strong></a></p>
<form method="post" action="/BAS/fes.jsp">
<table width="669" height="31" border="1" align="center" background="Hors.gif">
  <tr>
    <td width="206"><strong>Code:</strong>
    <input type="text" value="" name="code" /></td>
    <td width="199"><strong>Name:</strong>
      <input name="username" type="text" id="username" value=""/></td>
    <td width="193"><strong>Zone:
    </strong>
    <input type="text" value="" name="zone" /></td>
	</tr>
</table>

<p>&nbsp;</p>
<table width="664" border="1" align="center" bgcolor="#990099">
  <tr>
    <td colspan="6"><p align="center" class="style3"> <span class="style8">Marketting </span></p></td>
    </tr>
  <tr>
    
    <td width="99"><span class="style7">Day </span></td>
    <td width="288"><span class="style7">Date</span></td>
    <td width="92"><span class="style7">PersonalVisit</span></td>
    <td width="112"><span class="style7">Tele-Marketing</span></td>
    <td width="98"><span class="style7">Call-Received</span></td>
    </tr>
  <tr>
   
    <td><select name="day" size="1">
      <option>Monday</option>
      <option>Tuesday</option>
      <option>Wednsday</option>
      <option>Thursday</option>
      <option>Friday</option>
      <option>Saturday</option>
      <option>Sunday</option>
    </select></td>
    <td><input name="date" type="text" id="date"  readonly="true"/><a href="javascript:NewCal('date','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a><span class="style8"><strong>dd/mm/yy</strong></span></td>
    <td><select name="personalvisit" size="1" id="personalvisit">
      <option>Yes</option>
      <option>No</option>
    </select></td>
    <td><select name="telemarketing" size="1" id="telemarketing">
      <option>Yes</option>
      <option>No</option>
    </select></td>
    <td><select name="callreceived" size="1" id="callreceived">
      <option>Yes</option>
      <option>No</option>
    </select></td>
  </tr>
</table>
<p align="center" class="style2">&nbsp;</p>
<table width="1213" height="98" border="1" align="center" bgcolor="#990099">
  <tr>
    <td colspan="8" class="style2"><div align="center"><span class="style8">Personal Visit </span></div></td>
    </tr>
  <tr>
  
    <td width="149"><span class="style7">Time</span></td>
    <td width="149"><span class="style7">Company</span></td>
    <td width="149"><span class="style7">Service
	Type</span></td>
    <td width="149"><span class="style7">No.of Employee`s</span></td>
    <td width="149"><span class="style7">ContactPerson
	Detail</span></td>
    <td width="149"><span class="style7">Discussion
	Details </span></td>
    <td width="149"><span class="style7">Requirements</span></td>
    <td width="144"><span class="style7">Reviews</span></td>
	</tr>
  <tr>
    
    <td><input type="text" value="" name="time"/></td>
    <td><input type="text" value="" name="company"/></td>
    <td><input name="typeofservice" type="text" id="typeofservice" value=""/></td>
    <td><input name="noofemps" type="text" id="noofemps" value=""/></td>
    <td><input type="text"name="contactedto"  id="contactedto" value=""/></td>
    <td><input type="text" name="discussiondetail"  id="discussiondetail" value=""></td>
    <td><input name="requirement" type="text" id="requirement" value=""/></td>
    <td><input name="review" type="text" id="review" value=""/></td>
  </tr>
</table>
<p align="center" class="style2">&nbsp;</p>
<table width="949" height="81" border="1" align="center" bgcolor="#990099">
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
    
    <td><input name="time1" type="text" id="time1" value=""/></td>
    <td><input type="text" name="cname"  id="cname" value=""></td>
    <td><input name="noofemps1" type="text" id="noofemps1" value=""/></td>
    <td><input name="typeofservice1" type="text" id="typeofservice1"  value=""/></td>
    <td><input name="mobno" type="text" id="mobno" value=""/></td>
    <td><input type="text" name="discussiondetail1" id="discussiondetail1" value=""> </td>
    <td><input name="requirement1" type="text" id="requirement1" value=""/></td>
    <td><input name="review1" type="text" id="review1" value=""/></td>
  </tr>
</table>
<p align="center" class="style2">&nbsp;</p>
<table width="668" height="78" border="1" align="center" bgcolor="#990099">
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
    
    <td><input name="time2" type="text" id="time2" value=""/></td>
    <td><input name="callrecipient" type="text" id="callrecipient" value=""/></td>
    <td><input type="text" name="cname1" id="cname1"  value=""></td>
    <td><input name="personname" type="text" id="personname" value=""/></td>
    <td><input name="typeofservice2" type="text" id="typeofservice2" value=""/></td>
    <td><input name="mobno1" type="text" id="mobno1" value=""/></td>
    <td><input type="text" name="discussiondetail2"  id="discussiondetail2" value=""> </td>
    <td><input name="requirement2" type="text" id="requirement2" value=""/></td>
    <td><input name="review2" type="text" id="review2" value=""/></td>
  </tr>
</table>
<table align="center">
<tr>
	<td bgcolor="#990099"><span class="style8"><strong>To:</strong>
	  <input type="text" value="" />
	</span></td>
	<td bgcolor="#990099"><span class="style5"><span class="style7">Subject</span>:
	  <input type="text" value="" />
	</span></td>
	<td bgcolor="#990099"><input type="submit" value="submit" name="submit" /></td>
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
if(request.getMethod().equals("POST"))
{
  		try {
		//table1
		
       			String code=request.getParameter("code");
				String username=request.getParameter("username");
       			String zone=request.getParameter("zone");
				
		//table2		
 			    
       			String day=request.getParameter("day");
				String date=request.getParameter("date");
       			String personalvisit=request.getParameter("personalvisit");
				String telemarketing=request.getParameter("telemarketing");
       			String callreceived=request.getParameter("callreceived");
				
		//table3
				
				String time=request.getParameter("time");
				String company=request.getParameter("company");
       			String typeofservice=request.getParameter("typeofservice");
				String noofemps=request.getParameter("noofemps");
       			String contactedto=request.getParameter("contactedto");
				String discussiondetail=request.getParameter("discussiondetail");
				String requirement=request.getParameter("requirement");
       			String review=request.getParameter("review");
				
		//table4
				String typeofservice1=request.getParameter("typeofservice1");
				String noofemps1=request.getParameter("noofemps1");
				String discussiondetail1=request.getParameter("discussiondetail1");
				String requirement1=request.getParameter("requirement1");
       			String review1=request.getParameter("review1");
				String time1=request.getParameter("time1");
				String cname=request.getParameter("cname");
				String mobno=request.getParameter("mobno");			 			
				
      
      //table5	
	  			String typeofservice2=request.getParameter("typeofservice2");
				String discussiondetail2=request.getParameter("discussiondetail2");
				String requirement2=request.getParameter("requirement2");
       			String review2=request.getParameter("review2");
	  			String time2=request.getParameter("time2");
	  			String cname1=request.getParameter("cname1");
				String mobno1=request.getParameter("mobno1");
				String callrecipient=request.getParameter("callrecipient");
				String personname=request.getParameter("personname");
       			
        
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="insert into fieldexecutivesheet(code,username,zone) values('"+code+"','"+username+"','"+zone+"')";
	    		PreparedStatement st=con.prepareStatement(query);
       			
				int insert=0;
          		insert= st.executeUpdate();
     
      
  	
      
        
       			String quer="insert into marketing(code,day,date,personalvisit,telemarketing,callreceived) values('"+code+"','"+day+"','"+date+"','"+personalvisit+"','"+telemarketing+"','"+callreceived+"')";
	    		PreparedStatement st1=con.prepareStatement(quer);
       			
				int insert1=0;
          		insert1= st1.executeUpdate();
     
       			        
       			String que="insert into personalvisit(code,time,company,typeofservice,noofemps,contactedto,discussiondetail,requirement,review) values('"+code+"','"+time+"','"+company+"','"+typeofservice+"','"+noofemps+"','"+contactedto+"','"+discussiondetail+"','"+requirement+"','"+review+"')";
	    		PreparedStatement st2=con.prepareStatement(que);
       			
				int insert2=0;
          		insert2= st2.executeUpdate();
     
       			
        
       			String qu="insert into telemarketing(code,time1,cname,noofemps1,typeofservice1,mobno,discussiondetail1,requirement1,review1) values('"+code+"','"+time1+"','"+cname+"','"+noofemps1+"','"+typeofservice1+"','"+mobno+"','"+discussiondetail1+"','"+requirement1+"','"+review1+"')";
	    		PreparedStatement st3=con.prepareStatement(qu);
       			
				int insert3=0;
          		insert3= st3.executeUpdate();
     
        
     String q="insert into callreceived(code,time2,callrecipient,cname1,personname,typeofservice2,mobno1,discussiondetail2,requirement2,review2) values('"+code+"','"+time2+"','"+callrecipient+"','"+cname1+"','"+personname+"','"+typeofservice2+"','"+mobno1+"','"+discussiondetail2+"','"+requirement2+"','"+review2+"')";
	    		PreparedStatement st4=con.prepareStatement(q);
       			
				int insert4=0;
          		insert4= st4.executeUpdate();
     			 if(insert4<0)
	   				{
        			response.sendRedirect("/BAS/views/fesview.jsp");
         			}
      
  }
  catch(SQLException e)
{
   // out.println(e);
}
 catch(Exception e)
{
    //out.println(e);
}  
} 
%>  
</body>
</html>
