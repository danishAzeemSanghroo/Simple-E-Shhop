<%@page import="DatabaseManagerClass.DatabaseManager"%>
<%@page import="BeanClasses.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<html>
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
			<td>Product Id</td>
			<td>Product Name</td>
			<td>Price</td>
                        <td>Picture</td>
			<td>Description</td>
                        <td>Quantity</td>
                        <td>Order</td>
				
		</tr>
                
<%
    
    try{
        int id=Integer.parseInt(request.getParameter("prodId"));
        
    ArrayList<ProductsBean> list=DatabaseManager.getProducts(id);
    for(ProductsBean bean: list)
    {
    
       %>
       
                        <tr>
				<td><%=bean.getProdId()%></td>
				<td><%=bean.getProdName()%></td>
				<td><%=bean.getPrice()%></td>
                                <td>
                                    
                                    <a href="ShowImages.jsp?prodIdImg=<%=bean.getProdId()%>" >
                                        <img src="Images/<%=bean.getProdId()%>/1.jpg" width="100" height="100" alt="<%=bean.getProdName()%>" >
                                        
                                    </a>
                                </td>
				<td><%=bean.getProdDesc()%></td>
       <form  action="AddCookies.jsp" method="post">                         
                                <td><input type="text" name="quantity" value="0"></td>
                        <input type="hidden" name="hiddenValue1" value="<%=bean.getPrice()%>">
                        <input type="hidden" name="hiddenValue2" value="<%=bean.getProdName()%>">
                        <input type="hidden" name="prodId1" value="<%=id%>">
                        
                                <td><input type="submit" value="Add"></td>
                                
				
			</tr>
         </form>             
       
       <%
    }
    
    }catch(Exception e)
    {
    out.println(e);
    }
%>

 
</table>
<<h1><a href="ShowBasket.jsp">Show Basket</a></h1>
</body>
</html>