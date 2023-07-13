 <%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
    <title>changepassword_code</title>
	<%! String user1; 
%>
<% user1=(String)session.getAttribute("user");
%>
<% 
   

try{  
        String userid=request.getParameter("txtusername");
		String oldpassword=request.getParameter("password");
		String newpassword=request.getParameter("newpassword");
		
        String driver="com.mysql.jdbc.Driver";
        String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       String user="root";
       String pasword="admin";
       Class.forName(driver);
       Connection con=DriverManager.getConnection(connection,user,pasword);
	   
	   String query1="select * from signin where username='"+user1+"' and password='"+oldpassword+"'";
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery(query1);
	   
	   String query2 =("Update signin set password='"+newpassword+"' where username ='"+userid+"'");
	   boolean TGstatus=false;
	    while(rs.next()){
		       TGstatus=true;
		   }
		   if(!(TGstatus)){
		      response.sendRedirect("/BAS/changepwd.jsp?oldpassworderror=error");
		   }
	       else{
		     PreparedStatement st1=con.prepareStatement(query2);
       
	         	int insert1=0;
                 insert1= st1.executeUpdate();
			 
			 response.sendRedirect("/BAS/signin.jsp");  
		   }
	    }
				  catch(Exception e){
                  out.println("jsp error"+e);
      }    
				
				%>
