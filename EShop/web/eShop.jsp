<%@page import="DatabaseManagerClass.DatabaseManager"%>
<%@page import="BeanClasses.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
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
<%
    try{
        
    ArrayList<ProductCategoryBean> list=DatabaseManager.getProductCategory();
    for(ProductCategoryBean bean: list)
    {
       %>
       
       <h1><a href="Products.jsp?prodId=<%=bean.getProdCatId()%>"> <%=bean.getProdCat()%></a></h1>
       
       <%
    }
    
    }catch(Exception e)
    {
    out.println("Error "+e.toString());
    }
%>