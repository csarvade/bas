<%@ page  import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>reply2</title>
</head>

<body>

<%
	
  		try {
       			String username=(String)session.getAttribute("user");
       			String day=request.getParameter("day");
				String date=request.getParameter("date");
      			String to1=request.getParameter("username");
					String subject=request.getParameter("subject");
						String description=request.getParameter("description");
							String flag="u";
        		
				
				
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="insert into timesheet(username,day,date,to1,subject,description,flag) values('"+username+"','"+day+"','"+date+"','"+to1+"','"+subject+"','"+description+"','"+flag+"')";
	    		PreparedStatement st=con.prepareStatement(query);
       			
				
       			
				int insert=0;
          		insert= st.executeUpdate();
     
       
					
					
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
