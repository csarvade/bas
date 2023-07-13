<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>delete mail</title>
</head>
<body>

<%
	
  		try {
       			String username=(String)session.getAttribute("username");
				//String user1=(String)session.getAttribute("user");
				String subject=(String)session.getAttribute("sub");
				String description=(String)session.getAttribute("description");
				
       			//out.println(username);
				//out.println(subject);
        		
				
				
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="update fieldexecutivesheet set flag='d' where username="+"'"+username+"' and subject="+"'"+subject+"'";
	    		PreparedStatement st=con.prepareStatement(query);
       			
				
       			
				int insert=0;
          		insert= st.executeUpdate();
     
       if(insert>0){
	   response.sendRedirect("/BAS/inbox3.jsp");}
					
					
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

</body>
</html>
