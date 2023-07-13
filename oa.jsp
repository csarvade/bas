<%@page import="java.sql.*,java.lang.*"%>

<html>
<head>
<script type="text/javascript" language="javascript">
function findtax()
{
	var temp = document.getElementById("tx");
	var temp1 = document.getElementById("basic");
	var temp2 = document.getElementById("tax");	
	var temp3 = document.getElementById("total");
	var temp4 = document.getElementById("transcharge");
	var temp5 = document.getElementById("gtotal");
	
	temp2.value=temp.value*temp1.value/100;	
	temp3.value = parseFloat(temp2.value)+parseFloat(temp1.value);
	temp5.value = parseFloat(temp3.value)+parseFloat(temp4.value);
	
}



function cal()
{
//first row
var num1=document.getElementById("qty").value;
var num2=document.getElementById("rate").value;

if(num1!=""){
var no1=parseInt(num1);
var no2=parseFloat(num2);
var amt=no1*no2;
document.getElementById("amt").value=amt;
var basic=amt;
document.getElementById("basic").value=basic;
}

// second row
var num3=document.getElementById("qty1").value;
var num4=document.getElementById("rate1").value;

if(num3!=""){
var no3=parseInt(num3);
var no4=parseFloat(num4);
var amt1=no3*no4;
document.getElementById("amt1").value=amt1;
var basic1=amt1+basic;
document.getElementById("basic").value=basic1;
}

 //third row
  
  var num5=document.getElementById("qty2").value;
var num6=document.getElementById("rate2").value;

if(num5!=""){
var no5=parseInt(num5);
var no6=parseFloat(num6);
var amt2=no5*no6;
document.getElementById("amt2").value=amt2;
var basic2=basic1+amt2;
document.getElementById("basic").value=basic2;

}

 //fourth row
  
  var num7=document.getElementById("qty3").value;
var num8=document.getElementById("rate3").value;

if(num7!=""){
var no7=parseInt(num7);
var no8=parseFloat(num8);
var amt3=no7*no8;
document.getElementById("amt3").value=amt3;
var basic3=basic2+amt3;
document.getElementById("basic").value=basic3;

}

//fifth row
  
  var num9=document.getElementById("qty4").value;
var num10=document.getElementById("rate4").value;

if(num9!=""){
var no9=parseInt(num9);
var no10=parseFloat(num10);
var amt4=no9*no10;
document.getElementById("amt4").value=amt4;
var basic4=basic3+amt4;
document.getElementById("basic").value=basic4;
}

//sixth row
  
  var num11=document.getElementById("qty5").value;
var num12=document.getElementById("rate5").value;

if(num11!=""){
var no11=parseInt(num11);
var no12=parseFloat(num12);
var amt5=no11*no12;
document.getElementById("amt5").value=amt5;
var basic5=basic4+amt5;
document.getElementById("basic").value=basic5;
}

//seventh row
  
  var num13=document.getElementById("qty6").value;
var num14=document.getElementById("rate6").value;

if(num13!=""){
var no13=parseInt(num13);
var no14=parseFloat(num14);
var amt6=no13*no14;
document.getElementById("amt6").value=amt6;
var basic6=basic5+amt6;
document.getElementById("basic").value=basic6;
}
}
-->
</script>

<title>orderacceptance</title><style type="text/css">
<!--
.style2 {
	font-size: 18px;
	font-weight: bold;
}
.style7 {font-size: 14px; font-weight: bold; }
.style10 {font-size: 18px}
.style14 {color: #FFFFFF; }
.style15 {font-size: 14px; font-weight: bold; color: #FFFFFF; }
.style16 {color: #0000FF; font-weight: bold; }
.style18 {font-size: 10px; font-weight: bold; color: #FFFFFF; }
.style19 {font-size: 16px; font-weight: bold; color: #FFFFFF; }
-->
</style>
<script language="javascript" type="text/javascript" src="javascripts/datetimepicker.js"></script>
<marquee behavior="alternate"><font color="#0099cc" size="+2">Order Acceptance Information</font></marquee>
</head>

<body>
<table align="center">
  <tr><td><font color="#FF0000">(All Fields Are Mandatory.)</font></td></tr></table>
<form action="/BAS/oa.jsp" method="post" name="oa">

<table width="790" height="79" border="2" align="center"  bgcolor="#0099CC">
  <tr>
    <td width="306" height="73"><p align="justify" class="style14"><strong><span class="style10">SHANTHALAPOWER LIMITED </span></strong></p>
    <p align="justify" class="style14"><span class="style7">Shanthala,Priyadharshini Colony,Hubli-30 </span></p></td>
    <td colspan="2"><p align="center" class="style19">ORDER ACCEPTANCE/AMMENDMENT</p>
      <p align="justify" class="style15">&nbsp;</p>      </td> 
  </tr>

      


  <tr>
    <td width="306"><div align="left"><span class="style15">CUSTOMER NAME: 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="" name="name" title="Please Enter Valid Customer Name"/>
    </span></div></td>
    <td width="240"><span class="style15">OA NO. :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
    <input type="text" value="" name="oano" title="Please Enter Valid Order Acceptance Number"/></span></td>
    <td width="220"><span class="style15">DATE
    <input name="oadate" type="text" id="oadate" readonly="true" title="Please Enter Valid Order Acceptance Date"/><a href="javascript:NewCal('oadate','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a> 
    </span></td>
  </tr>
  <tr>
    <td><div align="left"><span class="style15">CUSTOMER ADDRESS:
      &nbsp;<input type="text" value="" name="address" title="Please Enter Valid Valid Customer Address"/> 
    </span></div></td>
    <td><span class="style15">ORDER REF.:
        <input type="text" value="" name="orderref" title="Please Enter Valid Order Reference"/></span></td>
    <td><span class="style15">DATE:<input name="orderdate" type="text" id="orderdate"  readonly="true" title="Please Enter Valid Order Date"/><a href="javascript:NewCal('orderdate','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a> 
    </span></td>
  </tr>
  <tr>
    <td><div align="left"><span class="style15">STATE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="" name="state" title="Please Enter Valid Customer State"/>
    </span></div></td>
    <td><span class="style15">OUR REF:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="text" value="" name="ourrefe" title="Please Enter Valid Our Reference"/></span></td>
    <td><span class="style15">DATE:<input name="ourrefdate" type="text" id="ourrefdate"  readonly="true" title="Please Enter Valid Our Reference Date"/><a href="javascript:NewCal('ourrefdate','ddmmyyyy')"> <img src="../BAS/calendar.gif" alt="s" width="17" height="15"></a> 
    </span></td>
  </tr>
  <tr>
    <td><span class="style15">MOBILE NUMBER:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <input type="text" value="" name="mobno" title="Please Enter Valid Customer Mobile Number"/></span></td>
    <td ><span class="style15">EMAIL-ID:&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="text" value="" name="emailid"  title="Please Enter Valid Customer Email-Id"/></span></td> 
    <td width="220" height="57"><span class="style15">QNO:</span>
      <input name="qno" type="text" id="qno" value=""  title="Please Enter Valid Quotation Number"/></td> 
   </tr>
  
</table>
<table align="center" background="Hors.gif">
<tr>
<td><a href="#" class="style2" ><center> Testing Details:</center> </a></td>
</tr></table>

<table width="627" height="287" border="2" align="center"  bgcolor="#0099CC">
  
  <tr>
    <td width="150"><span class="style15">PARTICULARS</span></td>
    <td width="149"><span class="style15">QTY </span></td>
    <td width="148"><p class="style15">RATE(Rs.)</p></td>
    <td width="150"><p class="style15">AMOUNT(Rs.)</p></td>
  </tr>
  <td><input name="particulars" type="text" id="particulars" value="" title="Please Enter Valid Particulars"/></td>
      <td><input name="qty" type="text" id="qty" value="" title="Please Enter Valid Quantity" /></td>
    <td><input name="rate" type="text" id="rate" value="" onBlur="cal();" title="Please Enter Valid Rate"/></td>
    <td><input name="amt" type="text" id="amt"  value="" readonly="true" title="Please Enter Valid Ammount"/></td>
  </tr>
  <tr>
    <td><input name="particulars1" type="text" id="particulars1" value=""  title="Please Enter Valid Particulars1"/></td>
    <td><input name="qty1" type="text" id="qty1" value=""  title="Please Enter Valid Quantity"/></td>
    <td><input name="rate1" type="text" id="rate1" value="" onBlur="cal();" title="Please Enter Valid Rate"/></td>
    <td><input name="amt1" type="text" id="amt1" value="" readonly="true" title="Please Enter Valid Ammount" /></td>
  </tr>
  <tr>
    <td><input name="particulars2" type="text" id="particulars2" value=""  title="Please Enter Valid Particulars"/></td>
    <td><input name="qty2" type="text" id="qty2" value=""  title="Please Enter Valid Quantity"/></td>
    <td><input name="rate2" type="text" id="rate2" value="" onBlur="cal();" title="Please Enter Valid Rate"/></td>
    <td><input name="amt2" type="" id="amt2" value=""readonly="true"  title="Please Enter Valid Ammount"/></td>
  </tr>
  <tr>
    <td><input name="particulars3" type="text" id="particulars3" value="" title="Please Enter Valid Particulars" /></td>
    <td><input name="qty3" type="text" id="qty3" value="" title="Please Enter Valid Quantity" /></td>
    <td><input name="rate3" type="text" id="rate3" value="" onBlur="cal();" title="Please Enter Valid Rate"/></td>
    <td><input name="amt3" type="text" id="amt3" value=""readonly="true" title="Please Enter Valid Ammount" /></td> 
  </tr>
  <tr>
    <td height="31"><input name="particulars4" type="text" id="particulars4" value="" title="Please Enter Valid Particulars" /></td>
    <td><input name="qty4" type="text" id="qty4" value=""  title="Please Enter Valid Quantity"/>
    </td>
    <td><input name="rate4" type="text"id="rate4" value="" onBlur="cal();" title="Please Enter Valid Rate"/></td>
    <td><input name="amt4" type="text" id="amt4" value="" readonly="true" title="Please Enter Valid Ammount"/></td>
  </tr>
  <tr>
    <td height="28"><input name="particulars5" type="text" id="particulars5" value="" title="Please Enter Valid Particulars" /></td>
    <td><input name="qty5" type="text" id="qty5" value="" title="Please Enter Valid Quantity" /></td>
    <td><input name="rate5" type="text" id="rate5" value="" onBlur="cal();"  title="Please Enter Valid Rate"/></td>
    <td><input name="amt5" type="text" id="amt5" value="" readonly="true" title="Please Enter Valid Ammount"/></td>
  </tr>
  <tr>
    <td><input name="particulars6" type="text" id="particulars6" value=""  title="Please Enter Valid Particualars"/></td>
    <td><input name="qty6" type="text" id="qty6" value="" title="Please Enter Valid Quantity" /></td>
    <td><input name="rate6" type="text" id="rate6" value="" onBlur="cal();" title="Please Enter Valid Rate"/></td>
    <td><input name="amt6" type="text" id="amt6" value="" readonly="true" title="Please Enter Valid Ammount"/></td>
  </tr>
  </table>
  <table width="623" align="center" bgcolor="#0099CC">
 
  <tr>
    <td><span class="style15">BASIC TOTAL </span></td>
    <td colspan="3" align="right"><input name="basic" type="text" id="basic" value="" onClick="cal();" readonly="true" /></td>
  </tr>
  <tr>
    <td><span class="style15">SERVICE TAX:
      <label>
      <input name="tx" type="text" id="tx"  onChange="findtax()" title="Please Enter Valid Tax In Percentage"/>
      </label>
    %</span></td>
    <td colspan="3" align="right"><input name="tax" type="text" id="tax" value="" onClick="cal();" readonly="true" /></td>
  </tr>
  <tr>
    <td><span class="style15">TOTAL:</span></td>
    <td colspan="3" align="right"><input name="total" type="text" id="total" value=""  readonly="true"/></td>
  </tr>
  <tr>
    <td><span class="style15">TRANSPORTATION</span></td>
    <td colspan="3" align="right"><input name="transcharge" type="text" id="transcharge" value="" onBlur="findtax()" title="Please Enter Valid Transportation Chargers"/></td>
  </tr>
  <tr>
    <td><span class="style15">GRAND TOTAL</span></td>
    <td colspan="3" align="right"><input name="gtotal" type="text" id="gtotal" value="" readonly="true"/></td>
  </tr>
  <tr>
    <td colspan="4"><span class="style18">(Rs in words:)
          <input type="text" name="rsinwords" value="" size="70" title="Please Enter Valid Rupees in Words" />
    </span></td>
  </tr>
</table>&nbsp;
  <table width="790" height="139" border="2" align="center" bgcolor="#0099CC" >
  <tr>
    <td width="404"><span class="style15">Special Requirements if any : </span></td>
    <td width="368"><input name="specialrequirement" type="text" id="specialrequirement" value="" title="Please Enter Valid Special Requirement"/></td>
  </tr>
  <tr>
    <td><span class="style15">Dispatch Schedule : </span></td>
    <td><input type="text" value="" name="dispatchschedule" title="Please Enter Valid Dispatch Schedule"/></td>
  </tr>
  <tr>
    <td><span class="style15">Payment terms: </span></td>
    <td><input name="paymentterms" type="text" id="paymentterms" value="" title="Please Enter Valid Payment Terms"/></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input name="submit" type="submit" value="save"  align="middle"/></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="783" border="0" align="center">
  <tr>
    <td width="339"><div align="left" class="style16">Marketing Executive</div></td>
    <td width="434"><div align="right" class="style16">Chief Head-Marketing </div></td>
  </tr>
</table>
</form>

<%

  		try {
		//table1
		
       			String oano=request.getParameter("oano");
				String name=request.getParameter("name");
       			String address=request.getParameter("address");
				String state=request.getParameter("state");
				String mobno=request.getParameter("mobno");
       			String emailid=request.getParameter("emailid");
    			String orderref=request.getParameter("orderref");
				String ourref=request.getParameter("ourref");
				String oadate=request.getParameter("oadate");
    			String orderdate=request.getParameter("orderdate");
				String ourrefdate=request.getParameter("ourrefdate");
				
		//table2		
 			    
       			String qno=request.getParameter("qno");
				String particulars=request.getParameter("particulars");
				String qty=request.getParameter("qty");
       			String rate=request.getParameter("rate");
				String amt=request.getParameter("amt");
					String particulars1=request.getParameter("particulars1");
				String qty1=request.getParameter("qty1");
       			String rate1=request.getParameter("rate1");
				String amt1=request.getParameter("amt1");
					String particulars2=request.getParameter("particulars2");
				String qty2=request.getParameter("qty2");
       			String rate2=request.getParameter("rate2");
				String amt2=request.getParameter("amt2");
					String particulars3=request.getParameter("particulars3");
				String qty3=request.getParameter("qty3");
       			String rate3=request.getParameter("rate3");
				String amt3=request.getParameter("amt3");
					String particulars4=request.getParameter("particulars4");
				String qty4=request.getParameter("qty4");
       			String rate4=request.getParameter("rate4");
				String amt4=request.getParameter("amt4");
					String particulars5=request.getParameter("particulars5");
				String qty5=request.getParameter("qty5");
       			String rate5=request.getParameter("rate5");
				String amt5=request.getParameter("amt5");
					String particulars6=request.getParameter("particulars6");
				String qty6=request.getParameter("qty6");
       			String rate6=request.getParameter("rate6");
				String amt6=request.getParameter("amt6");
				String basic=request.getParameter("basic");
       			String tax=request.getParameter("tax");
				String total=request.getParameter("total");
       			String transcharge=request.getParameter("transcharge");
				String gtotal=request.getParameter("gtotal");
				String rsinwords=request.getParameter("rsinwords");
				
		//table3
				
				String specialrequirement=request.getParameter("specialrequirement");
				String dispatchschedule=request.getParameter("dispatchschedule");
       			String typeofservice=request.getParameter("typeofservice");
				String paymentterms=request.getParameter("paymentterms");
       			
		
        
       			String driver="com.mysql.jdbc.Driver";
       			String connection="jdbc:mysql://localhost/businessanalyzingsystem";
       			String user="root";
       			String pasword="admin";
       			Class.forName(driver);
       			Connection con=DriverManager.getConnection(connection,user,pasword);
       			String query="insert into customerdetail(oano,qno,name,address,state,mobno,emailid,orderref,ourref,oadate,orderdate,ourrefdate) values('"+oano+"','"+qno+"','"+name+"','"+address+"','"+state+"','"+mobno+"','"+emailid+"','"+orderref+"','"+ourref+"','"+oadate+"','"+orderdate+"','"+ourrefdate+"')";
	    		PreparedStatement st=con.prepareStatement(query);
       						
				int insert=0;
          		insert= st.executeUpdate();
     
       
  	
      
        
       			String quer="insert into calibration(qno,particulars,qty,rate,amt)values('"+qno+"','"+particulars+"','"+qty+"','"+rate+"','"+amt+"')";
	    		PreparedStatement st1=con.prepareStatement(quer);
       			//out.println(quer);
				
				int insert1=0;
          		insert1= st1.executeUpdate();
				
				
       			
       			String quer1="insert into calibration(qno,particulars,qty,rate,amt)values('"+qno+"','"+particulars1+"','"+qty1+"','"+rate1+"','"+amt1+"')";
				PreparedStatement st2=con.prepareStatement(quer1);
				int insert2=0;
          		insert2= st2.executeUpdate();
				
				
       			String quer2="insert into calibration(qno,particulars,qty,rate,amt)values('"+qno+"','"+particulars2+"','"+qty2+"','"+rate2+"','"+amt2+"')";
				PreparedStatement st3=con.prepareStatement(quer2);
				int insert3=0;
          		insert3= st3.executeUpdate();
				
				
       			String quer3="insert into calibration(qno,particulars,qty,rate,amt)values('"+qno+"','"+particulars3+"','"+qty3+"','"+rate3+"','"+amt3+"')";
          		PreparedStatement st4=con.prepareStatement(quer3);
				int insert4=0;
				insert4= st4.executeUpdate();
				
       			String quer4="insert into calibration(qno,particulars,qty,rate,amt)values('"+qno+"','"+particulars4+"','"+qty4+"','"+rate4+"','"+amt4+"')";
				PreparedStatement st5=con.prepareStatement(quer4);
				int insert5=0;
          		insert5= st5.executeUpdate();
				
				
				
       			String quer5="insert into calibration(qno,particulars,qty,rate,amt)values('"+qno+"','"+particulars5+"','"+qty5+"','"+rate5+"','"+amt5+"')";
				PreparedStatement st6=con.prepareStatement(quer5);
				int insert6=0;
          		insert6= st6.executeUpdate();
				
				
				
       			String quer6="insert into calibration(qno,particulars,qty,rate,amt)values('"+qno+"','"+particulars6+"','"+qty6+"','"+rate6+"','"+amt6+"')";
				PreparedStatement st7=con.prepareStatement(quer6);
				int insert7=0;
          		insert7= st7.executeUpdate();
				
     String quer7="insert into servicebill(qno,basic,tax,total,transcharge,gtotal,rsinwords)values('"+qno+"','"+basic+"','"+tax+"','"+total+"','"+transcharge+"','"+gtotal+"','"+rsinwords+"')";
	 PreparedStatement st8=con.prepareStatement(quer7);
       			//out.println(quer);
				
				int insert8=0;
          		insert8= st8.executeUpdate();
      
       			        
       			String que="insert into otherdetail(qno,specialrequirement,dispatchschedule,paymentterms) values('"+qno+"','"+specialrequirement+"','"+dispatchschedule+"','"+paymentterms+"')";
	    		PreparedStatement st9=con.prepareStatement(que);
       							     			
				int insert9=0;
          		insert9= st9.executeUpdate();
     
      
  	
 
 
  }
  catch(SQLException e)
{
   // out.println(e);
}
 catch(Exception e)
{
   // out.println(e);
}  

%>  

</body>
</html>
