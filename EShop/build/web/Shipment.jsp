<html>
    <head>
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
input[type=email] {
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
        <title>title</title>
    </head>
    <body>

<h1>E-Commerce </h1>


<form action="Login.jsp" method="post">
    <%
    int totalAmount=Integer.parseInt(request.getParameter("totalAmount"));
    %>
<label>Email</label>
<input type="email" name="email">

<label>Password</label>
 <input type="password" name="password"><br>
 
  <input type="hidden" name="totalAmount" value="<%=totalAmount%>">
<input type="submit" name="login" value="login"><br>

</form>
<h1><a href="CreateAccount.jsp">Create New Account</a><h1>

    </body>
</html>