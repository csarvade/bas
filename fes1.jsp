<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>fieldexecutivesheet1</title>
</head>

<body>
<form action="" method="post">
</form>
<%! String username; 


%>


<%

  		try {
		//table1
				username=(String)session.getAttribute("user");
       			//code=(String)session.getAttribute("eno");
				
       			String zone=request.getParameter("zone");
				String date=request.getParameter("date");
				String day=request.getParameter("day");
       			String to1=request.getParameter("to1");
				String subject=request.getParameter("subject");
				String description=request.getParameter("description");
 				String flag="u";
				
		//table2		
 			    
       			String day1=request.getParameter("day1");
				String date1=request.getParameter("date1");
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
				
       			String query="insert into fieldexecutivesheet(username,day,date,to1,subject,description,flag,zone) values('"+username+"','"+day+"','"+date+"','"+to1+"','"+subject+"','"+description+"','"+flag+"','"+zone+"')";
	    		PreparedStatement st=con.prepareStatement(query);
				//out.println(query);
				int insert=0;
          		insert= st.executeUpdate();
               
        
       			String quer="insert into marketing(username1,day1,date1,personalvisit,telemarketing,callreceived) values('"+username+"','"+day1+"','"+date1+"','"+personalvisit+"','"+telemarketing+"','"+callreceived+"')";
	    		PreparedStatement st1=con.prepareStatement(quer);
       			//out.println(quer);
				int insert1=0;
          		insert1= st1.executeUpdate();
     
       			String que="insert into personalvisit(username2,time,company,typeofservice,noofemps,contactedto,discussiondetail,requirement,review) values('"+username+"','"+time+"','"+company+"','"+typeofservice+"','"+noofemps+"','"+contactedto+"','"+discussiondetail+"','"+requirement+"','"+review+"')";
	    		PreparedStatement st2=con.prepareStatement(que);
       			//out.println(que);
				int insert2=0;
          		insert2= st2.executeUpdate();
     
       			
        
       			String qu="insert into telemarketing(username3,time1,cname,noofemps1,typeofservice1,mobno,discussiondetail1,requirement1,review1) values('"+username+"','"+time1+"','"+cname+"','"+noofemps1+"','"+typeofservice1+"','"+mobno+"','"+discussiondetail1+"','"+requirement1+"','"+review1+"')";
	    		PreparedStatement st3=con.prepareStatement(qu);
       			//out.println(qu);
				int insert3=0;
          		insert3= st3.executeUpdate();
     
        
     String q="insert into callreceived(username4,time2,callrecipient,cname1,personname,typeofservice2,mobno1,discussiondetail2,requirement2,review2) values('"+username+"','"+time2+"','"+callrecipient+"','"+cname1+"','"+personname+"','"+typeofservice2+"','"+mobno1+"','"+discussiondetail2+"','"+requirement2+"','"+review2+"')";
	    		PreparedStatement st4=con.prepareStatement(q);
       			//out.println(q);
				int insert4=0;
          		insert4= st4.executeUpdate();
     			
				
      
  }
  catch(SQLException e)
{
   //out.println(e);
}
 catch(Exception e)
{
    //out.println(e);
	response.sendRedirect("/BAS/views/fieldexecutivehome.jsp");
}  
 
%>  
</body>
</html>
