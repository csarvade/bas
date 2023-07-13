<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>

<title>demo</title>
</head>

<body>
<form  name="demo" method="post" action="/BAS/demo.jsp">
<table width="200" border="1">
  <tr>
    <td>username</td>
    <td><input type="text" name="username" value="" /></td>
  </tr>
  <tr>
    <td>password</td>
    <td><input type="password" value="" name="password" /></td>
  </tr>
  <tr>
    
    <td><input type="submit" name="submit" value="submit" /></td>
      <td><input type="reset" name="reset" value="reset" /></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="200" border="1">
  <tr>
    <td>username</td>
    <td><input type="text" name="username" value="" /></td>
  </tr>
  <tr>
    <td>address</td>
    <td><input type="text" name="address" value="" /></td>
  </tr>
  <tr>
    
    <td><input type="submit" name="submit" value="submit" /></td>
      
    <td><input type="reset" name="reset" value="reset" /></td>
  </tr>
</table>

</form>
 
    <%
	
  		try {
       			String username=request.getParameter("username");
       			String password=request.getParameter("password");
      			
      
        
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/book";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="insert into raj values(?,?)";
	    		PreparedStatement st=con.prepareStatement(query);
       			st.setString(1,username);
       			st.setString(2,password);
				int insert=0;
          		insert= st.executeUpdate();
     
       if(insert>=1){
          out.println("<b> Sucessfully insertion of fields</b>");
          out.println("<br> username:   <b>"+username+"</b>");
          out.println("<br> password: <b>"+password+"</b>");
          
         			}
  	else{
  
 		  out.println("error in JSP code");  
         }
  }
 catch(Exception e)
{
    out.println(e);
}
try{
				String username=request.getParameter("username");
       			String  address=request.getParameter("address");

	   			String query1="insert into raja values(?,?)";
	   			PreparedStatement sta=con.prepareStatement(query1);
       			sta.setString(1,username);
       			sta.setString(2,address);
	   			int insert=0;
          		insert= st.executeUpdate();
     
       if(insert>=1){
          out.println("<b> Sucessfully insertion of fields</b>");
          out.println("<br> username:   <b>"+username+"</b>");
          out.println("<br> Address: <b>"+address+"</b>");
         

   					}
  	else{
  
 		  out.println("error in JSP code");  
         }
 }
 catch(Exception e)
{
    out.println(e);
}
%>
   
</body>
</html>
