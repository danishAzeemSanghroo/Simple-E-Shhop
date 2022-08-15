<%@page import="java.util.StringTokenizer"%>
<html>
<head>
    
</head>
<style>
body {
  background-color: lightblue;
}

h1 {
  color: white;
  text-align: center;
}

p {
  font-family: verdana;
  font-size: 20px;
}
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=date] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=button], input[type=submit], input[type=reset] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
input[type=text]:focus {
  background-color: lightblue;
}
table {
  width: 100%;
}
</style>  
<h1>E-Commerce </h1>
<body>
	<table border="2px">
		<tr>    
                        <td>Product ID</td>
			<td>Product Name</td>
			<td>Price</td>
			<td>Quantity</td>
                        <td>Amount</td>
                        <td>Description</td>
			<th colspan="2">Operation</th>
				
				
		</tr>	
		
<%
int totalAmount=0;
try{

        
	
		Cookie co[]=request.getCookies();
                
		for(int i=1;i<co.length;i++)
		{
        String prodName="";
	int quantity=0;
        int price=0;
        int amount=0;
                        
			prodName=co[i].getName();
			String value=co[i].getValue();
                        StringTokenizer st=new StringTokenizer(value,":");
                        
                        for(int j=0;j<st.countTokens();j++){
                            price=Integer.parseInt(st.nextToken());
                            quantity=Integer.parseInt(st.nextToken());
                            
//                            out.println(price+" "+quantity);
                             totalAmount+=price*quantity;
                            %>
                            		        <tr>
                                <td> </td>
				<td><%=prodName%></td>
				<td><%=price%></td>
				<td><%=quantity%></td>
                                <td><%=quantity*price%></td>
                                <td></td>
				
				
				<td><a href="DeleteCookie.jsp?prodName=<%=prodName%>">delete</a></td>
			</tr> 
                        <%
                            
                            }

	
			
		

	

		}
}catch(Exception e)
	{
	out.println(e);
	}

%>
</table>
<h3>Total purchased Amount is <%=totalAmount%></h3>

<form action="Shipment.jsp" method="post">
     <input type="hidden" name="totalAmount" value="<%=totalAmount%>">
    <input type="submit" name="shipment" value="Shipment">
    
    
</form>

</body>
</html>