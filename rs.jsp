<%@page import="java.sql.*,java.lang.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Report Status</title>
<script language="javascript" type="text/javascript" src="javascripts/datetimepicker.js"></script>
<style type="text/css">
<!--
.style3 {color: #FFFFFF; font-weight: bold; }
-->
</style>
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
 
 
  
  if(document.rs.oano.value==""){
	   alert("Please Enter valid Order Acceptance Number");
	   rs.oano.focus();
	   return false;
	 }
	 if(isNaN(document.rs.oano.value)==true)
      {
     alert("Order Acceptance Number Should be Numeric value");
		rs.oano.focus();
		rs.oano.value="";
	   return false;	   
     }
	 if(document.rs.qno.value==""){
	   alert("Please Enter valid Quotation Number");
	   rs.qno.focus();
	   return false;
	 }
	 if(isNaN(document.rs.qno.value)==true)
      {
     alert("Quotation Number Should be Numeric value");
		rs.qno.focus();
		rs.qno.value="";
	   return false;	   
     }
	 if(document.rs.fileno.value==""){
	   alert("Please Enter valid File Number");
	   rs.fileno.focus();
	   return false;
	 }
	 if(isNaN(document.rs.fileno.value)==true)
      {
     alert("File Number Should be Numeric value");
		rs.fileno.focus();
		rs.fileno.value="";
	   return false;	   
     }
	  if(document.rs.testdate.value==""){
	   alert("Please Enter valid Test Date");
	   rs.testdate.focus();
	   return false;
	 }
	  if(document.rs.testedby.value==""){
	   alert("Please Enter valid test person name");
	   rs.testedby.focus();
	   return false;
	 }
	if(document.rs.inworddate.value==""){
	   alert("Please Enter valid Inword Date");
	   rs.inworddate.focus();
	   return false;
	 }
	 	 if(document.rs.inwordno.value==""){
	   alert("Please Enter valid Inword Number");
	   rs.inwordno.focus();
	   return false;
	 }
	 if(isNaN(document.rs.inwordno.value)==true)
      {
     alert("Inword Number Should be Numeric value");
		rs.inwordno.focus();
		rs.inwordno.value="";
	   return false;	   
     }
	  if(document.rs.customername.value==""){
	   alert("Please Enter valid Customer Name");
	   rs.customername.focus();
	   return false;
	 }
	
	  if(document.rs.particulars.value==""){
	   alert("Please Enter valid Particulars");
	   rs.particulars.focus();
	   return false;
	 }
	
	
	 if(document.rs.noofreport.value==""){
	   alert("Please Enter valid Number of Reports");
	   rs.noofreport.focus();
	   return false;
	 }
	  if(isNaN(document.rs.noofreport.value)==true)
      {
     alert("Number of Reports Should be Numeric value");
		rs.noofreport.focus();
		rs.noofreport.value="";
	   return false;	   
     }
	 if(document.rs.inwordofdept.value==""){
	   alert("Please Enter valid Inword Department");
	   rs.inwordofdept.focus();
	   return false;
	 }
	
	 if(document.rs.status.value==""){
	   alert("Please Enter valid Status of Testing");
	   rs.status.focus();
	   return false;
	 }
	  if(document.rs.testingincharge.value==""){
	   alert("Please Enter valid Testing incharge");
	   rs.testingincharge.focus();
	   return false;
	 }
	  if(document.rs.reportedby.value==""){
	   alert("Please Enter valid Test Reporter");
	   rs.reportedby.focus();
	   return false;
	 }
	  if(document.rs.analyzedby.value==""){
	   alert("Please Enter valid Test Analyzer");
	   rs.analyzedby.focus();
	   return false;
	 }
	 if(document.rs.initialdispatchdate.value==""){
	   alert("Please Enter valid Initialdispatchdate");
	   rs.initialdispatchdate.focus();
	   return false;
	 }
	 if(document.rs.finaldispatchdate.value==""){
	   alert("Please Enter valid Final Dispatch Date");
	   rs.finaldispatchdate.focus();
	   return false;
	 }
	 if(document.rs.modeofdispatch.value==""){
	   alert("Please Enter valid Modeofdispatch");
	   rs.modeofdispatch.focus();
	   return false;
	 }
	 if(document.rs.dispatchdone.value==""){
	   alert("Please Enter valid Final Dispatch Done");
	   rs.dispatchdone.focus();
	   return false;
	 }
	  if(document.rs.remark.value==""){
	   alert("Please Enter valid Remark");
	   rs.remark.focus();
	   return false;
	 }
	 
	 if(document.rs.billno.value==""){
	   alert("Please Enter valid Employee Bill Number");
	   rs.billno.focus();
	   return false;
	 }
	  if(isNaN(document.rs.billno.value)==true)
      {
     alert("Bill Number Should be Numeric value");
		rs.billno.focus();
		rs.billno.value="";
	   return false;	   
     }
	
	  if(document.rs.billamt.value==""){
	   alert("Please Enter valid Final Bill Ammount");
	   rs.billamt.focus();
	   return false;
	 }
	 if(document.rs.emailid.value==""){
	   alert("Please Enter valid Emailid");
	   rs.emailid.focus();
	   return false;
	 }
	  if(document.rs.specialremarkafterdispatch.value==""){
	   alert("Please Enter valid Special Remark After Dispatch");
	   rs.specialremarkafterdispatch.focus();
	   return false;
	 }
	 if(document.rs.statusofbill.value==""){
	   alert("Please Enter valid Status of Bill");
	   rs.statusofbill.focus();
	   return false;
	 }
	 if(document.rs.orderremark.value==""){
	   alert("Please Enter valid Order Remark");
	   rs.orderremark.focus();
	   return false;
	 }
	 if(document.rs.contactpersondesignation.value==""){
	   alert("Please Enter valid Contact Person Designation");
	   rs.contactpersondesignation.focus();
	   return false;
	 }
	 
	 if(document.rs.mobno.value==""){
	   alert("Please Enter valid Mobile Number");
	   rs.mobno.focus();
	   return false;
	 }
	  if(isNaN(document.rs.mobno.value)==true)
      {
     alert("Mobile Number Should be Numeric value");
		rs.mobno.focus();
		rs.mobno.value="";
	   return false;	   
     }
	
	
	 

 }
 -->
 </script>
<marquee behavior="alternate"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="138" height="20" title="d">
  <param name="BGCOLOR" value="#FFFFFF" />
  <param name="BGCOLOR" value="" />
  <param name="movie" value="text7.swf" />
  <param name="quality" value="autolow" />
  <embed src="text7.swf" width="138" height="20" quality="autolow" pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" bgcolor="#FFFFFF" ></embed>
</object></marquee>
</head>

<body>
<form id="form1"  method="post" action="/BAS/rs.jsp" name="rs" onBlur="return valid();">
  <table width="1312" border="0" align="center" bgcolor="#0099CC">
    <tr>
      <td width="113"><span class="style3">Oano</span></td>
      <td width="177"><input name="oano" type="text" id="oano" value="" title="Please Enter Valid Order Acceptance Number"/></td>
      <td width="110"><span class="style3">Quotation Number</span></td>
      <td width="171"><input name="qno" type="text" id="qno" value="" title="Please Enter Valid Quotation Number"/></td>
      <td width="176"><span class="style3">Fileno</span></td>
      <td width="172"><input name="fileno" type="text" id="fileno" value="" title="Please Enter Valid File Number"/></td>
      <td width="185"><span class="style3">Test Date</span></td>
      <td width="174"><span class="style3">
        <input name="testdate" type="text" id="testdate" readonly="true" title="Please Enter Valid Test Date"/>
      <a href="javascript:NewCal('testdate','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a></span></td>
    </tr>
    <tr>
      <td><span class="style3">Tested By </span></td>
      <td><input name="testedby" type="text" id="testedby" value="" title="Please Enter Valid Test Person Name"/></td>
	  <td><span class="style3">Inworddate</span></td>
      <td><span class="style3">
        <input name="inworddate" type="text" id="inworddate" readonly="true" title="Please Enter Valid Inword Date"/>
      <a href="javascript:NewCal('inworddate','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a></span></td>
      <td><span class="style3">Inwordno</span></td>
      <td><input name="inwordno" type="text" id="inwordno" value="" title="Please Enter Valid Inword Number"/></td>
      <td><span class="style3">customername</span></td>
      <td><input name="customername" type="text" id="customername" value="" title="Please Enter Valid Customer Name"/></td>
    </tr>
    <tr>
	<td><span class="style3">Particulars</span></td>
	<td><input name="particulars" type="text" id="particulars" value="" title="Please Enter Valid Test Particulars"/></td>
      <td><span class="style3">Noofreport</span></td>
      <td><input name="noofreport" type="text" id="noofreport" value="" title="Please Enter Valid Number of Test Reports"/></td>
      <td><span class="style3">Inwordofdept</span></td>
      <td><span class="style3">
        <input name="inwordofdept" type="text" id="inwordofdept" readonly="true" title="Please Enter Valid Inword of Department"/>
      <a href="javascript:NewCal('inwordofdept','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a></span></td>
      <td><span class="style3">Status</span></td>
      <td><input name="status" type="text" id="status" value="" title="Please Enter Valid Status"/></td>
      
    </tr>
    <tr>
	<td><span class="style3">testingincharge</span></td>
      <td><input name="testingincharge" type="text" id="testingincharge" value="" title="Please Enter Valid Testing Incharge"/></td>
      <td><span class="style3">Reportedby</span></td>
      <td><input name="reportedby" type="text" id="reportedby" value="" title="Please Enter Valid Test Reporter"/></td>
      <td><span class="style3">Analyzedby</span></td>
      <td><input name="analyzedby" type="text" id="analyzedby" value="" title="Please Enter Valid Test Analyzer"/></td>
      <td><span class="style3">Initialdispatchdate</span></td>
      <td><span class="style3">
        <input name="initialdispatchdate" type="text" id="initialdispatchdate"  readonly="true" title="Please Enter Valid Initial Dispatch Date"/>
      <a href="javascript:NewCal('initialdispatchdate','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a></span></td>
      
    </tr>
    <tr>
	<td><span class="style3">finaldispatchdate</span></td>
      <td><span class="style3">
        <input name="finaldispatchdate" type="text" id="finaldispatchdate" readonly="true" title="Please Enter Final Dispatch Date"/>
      <a href="javascript:NewCal('finaldispatchdate','ddmmyyyy')">  <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a></span></td>
      <td><span class="style3">Modeofdispatch</span></td>
      <td><input name="modeofdispatch" type="text" id="modeofdispatch" value="" title="Please Enter Valid Mode of Dispatch"/></td>
      <td><span class="style3">Dispatchdone</span></td>
      <td><span class="style3">
        <input name="dispatchdone" type="text" id="dispatchdone" readonly="true" title="Please Enter Valid Dispatch Done Date"/>
      <a href="javascript:NewCal('dispatchdone','ddmmyyyy')">  <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a></span></td>
      <td><span class="style3">remark</span></td>
      <td><input name="remark" type="text" id="remark" value="" title="Please Enter Valid Test Service Remark"/></td>
      
    </tr>
    <tr>
	<td><span class="style3">billno</span></td>
      <td><input name="billno" type="text" id="billno" value="" title="Please Enter Valid Bill Number"/></td>
      <td><span class="style3">Bill Ammount</span></td>
      <td><input name="billamt" type="text" id="billamt" value="" title="Please Enter Valid Bill Ammount"/></td>
      <td><span class="style3">Emailid</span></td>
      <td><input name="emailid" type="text" id="emailid" value="" title="Please Enter Valid Email-Id"/></td>
      <td><span class="style3">specialremarkafterdispatch</span></td>
      <td><input name="specialremarkafterdispatch" type="text" id="specialremarkafterdispatch" value="" title="Please Enter Valid Special Remark After Dispatch Done"/></td>
      
    </tr>
    <tr>
	<td><span class="style3">status of Bill</span></td>
      <td><input name="statusofbill" type="text" id="statusofbill" value="" title="Please Enter Valid Status Of Bill"/></td>
      <td><span class="style3">Orderremark</span></td>
      <td><input name="orderremark" type="text" id="orderremark" value="" title="Please Enter Valid Order Remark"/></td>
      <td><span class="style3">Contactpersondesignation</span></td>
      <td><input name="contactpersondesignation" type="text" id="contactpersondesignation" value="" title="Please Enter Valid Contact Person Designation"/></td>
      <td><span class="style3">mobno</span></td>
      <td><input name="mobno" type="text" id="mobno" value="" title="Please Enter Valid Mobile Number"/></td>
      
    </tr>
   <tr>
    <td colspan="10" align="center"><input name="submit" type="submit" value="submit" align="middle" onBlur="return valid();"/></td> 
  </tr>
  </table>
</form>
<%
if(request.getMethod().equals("POST")){
try {



				String fileno="";
       			String oano="";
				String qno="";
       			String testdate="";
				String testedby="";
       			String inworddate="";
				String inwordno="";
       			String customername="";
				String particulars="";
       			String noofreport="";
				String inwordofdept="";
       			String status="";
				String testingincharge="";
       			String reportedby="";
				String analyzedby="";
       			String initialdispatchdate="";
				String finaldispatchdate="";
       			String modeofdispatch="";
				String dispatchdone="";
       			String remark="";
				
		//table1
				 fileno=request.getParameter("fileno");
       			 oano=request.getParameter("oano");
				 qno=request.getParameter("qno");
       			 testdate=request.getParameter("testdate");
				 testedby=request.getParameter("testedby");
       			 inworddate=request.getParameter("inworddate");
				 inwordno=request.getParameter("inwordno");
       			 customername=request.getParameter("customername");
				 particulars=request.getParameter("particulars");
       			 noofreport=request.getParameter("noofreport");
				 inwordofdept=request.getParameter("inwordofdept");
       			 status=request.getParameter("status");
				 testingincharge=request.getParameter("testingincharge");
       			 reportedby=request.getParameter("reportedby");
				 analyzedby=request.getParameter("analyzedby");
       			 initialdispatchdate=request.getParameter("initialdispatchdate");
				 finaldispatchdate=request.getParameter("finaldispatchdate");
       			 modeofdispatch=request.getParameter("modeofdispatch");
				 dispatchdone=request.getParameter("dispatchdone");
       			 remark=request.getParameter("remark");
				
		//table2		
 			    String orderremark="";
       			String billno="";
				String billamt="";
				String emailid="";
       			String specialremarkafterdispatch="";
				String statusofbill="";
       			String contactpersondesignation="";
       			String mobno="";
				
				 orderremark=request.getParameter("orderremark");
       			 billno=request.getParameter("billno");
				 billamt=request.getParameter("billamt");
				 emailid=request.getParameter("emailid");
       			 specialremarkafterdispatch=request.getParameter("specialremarkafterdispatch");
				 statusofbill=request.getParameter("statusofbill");
       			 contactpersondesignation=request.getParameter("contactpersondesignation");
       			 mobno=request.getParameter("mobno");
				
        
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
 String query="insert into reportstatussheet (oano,qno,fileno,testdate,testedby,inworddate,inwordno,customername,particulars,noofreport,inwordofdept,status,testingincharge,reportedby,analyzedby,initialdispatchdate,finaldispatchdate,modeofdispatch,dispatchdone,remark) values('"+oano+"','"+qno+"','"+fileno+"','"+testdate+"','"+testedby+"','"+inworddate+"','"+inwordno+"','"+customername+"','"+particulars+"','"+noofreport+"','"+inwordofdept+"','"+status+"','"+testingincharge+"','"+reportedby+"','"+analyzedby+"','"+initialdispatchdate+"','"+finaldispatchdate+"','"+modeofdispatch+"','"+dispatchdone+"','"+remark+"')";
	    		PreparedStatement st=con.prepareStatement(query);
				//out.println(query);
       			int insert=0;
          		insert= st.executeUpdate();
     
   
      
        
       			String quer="insert into finishedorder (oano,qno,billno,billamt,emailid,specialremarkafterdispatch,statusofbill,orderremark,contactpersondesignation,mobno) values('"+oano+"','"+qno+"','"+billno+"','"+billamt+"','"+emailid+"','"+specialremarkafterdispatch+"','"+statusofbill+"','"+orderremark+"','"+contactpersondesignation+"','"+mobno+"')";
				
	    		PreparedStatement st1=con.prepareStatement(quer);
       					
				int insert1=0;
          		insert1= st1.executeUpdate();
     			//System.out.println(quer);
       
  	    
 }
  catch(SQLException e)
{
    //out.println(e);
}
 catch(Exception e)
{
    //out.println(e);
} } 
%>
</body>
</html>
