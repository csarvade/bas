<%@page import="java.sql.*,java.lang.*"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>reg.jsp</title>

  

</head>
<body >
<TD align="left"><div align="right"><a href="/BAS/signin.jsp">Home</a>&nbsp;</div></TD>
<form action="" method="post" name="reg">
  
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
    out.println(e);
} 
 catch(Exception e)
{
    out.println(e);
}  
 
%>

</body>
</html>
