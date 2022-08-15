
<%-- 
    Document   : AddCookies
    Created on : Nov 16, 2021, 7:59:02 AM
    Author     : DANISH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String prodName=request.getParameter("hiddenValue2");
    int price=Integer.parseInt(request.getParameter("hiddenValue1"));
    int quantity=Integer.parseInt(request.getParameter("quantity"));
    int prodId=Integer.parseInt(request.getParameter("prodId1"));
    
    		Cookie co=new Cookie(prodName,price+":"+quantity);
//		out.println(co.getName()+" "+co.getValue());
			response.addCookie(co);
		response.sendRedirect("Products.jsp?prodId="+prodId);
		
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
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
    <body>
        <h1></h1>
    </body>
</html>
