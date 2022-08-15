<html>
<title>Create Customer</title>
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
<form action="CreateCustomer.jsp" method="post">
<label>First Name</label>
<input type="text" name="firstName">

<label>Last Name</label>
 <input type="text" name="lastName">
 
 <label>Email</label>
 <input type="text" name="email1">
 
 <label>Password</label>
 <input type="password" name="pass">
 
 <label>Confirm Password</label>
 <input type="password" name="confirmPass">
 
 <label>Address</label>
 <input type="text" name="address">

 <label>contact Number</label>
 <input type="text" name="contact">

 <label>Date of Create</label>
 <input type="date" name="dateOfCreate"> 
 
 <label>Remarks</label>
 <input type="text" name="remarks"> 
 
<input type="submit" name="submit" value="Create Account"> 

</form>

</body>
<html>