<<html>
    <head>
<style>
optgroup[label] {
   color: grey;
   font-style: inherit;
   font-weight: 300;
   text-shadow: none
}    
    select optgroup{
    background:#000;
    color:#fff;
    font-style:normal;
    font-weight:normal;
    }
.select-style {
    padding: 0;
    margin: 0;
    border: 1px solid #ccc;
    width: 120px;
    border-radius: 3px;
    overflow: hidden;
    background-color: #fff;
    background: #fff;
    position: relative;
}

.select-style select {
    padding: 5px 8px;
    width: 130%;
    border: none;
    box-shadow: none;
    background-color: transparent;
    background-image: none;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
.select-style:after {
    top: 50%;
    left: 85%;
    border: solid transparent;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: rgba(0, 0, 0, 0);
    border-top-color: #000000;
    border-width: 5px;
    margin-top: -2px;
    z-index: 100;
}
.select-style select:focus {
    outline: none;
}
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
#card{
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;    
    
}
</style>        
        <title>title</title>
    </head>
    <body>
<h1>E-Commerce </h1>
<%
int totalAmount=Integer.parseInt(request.getParameter("totalAmount"));
%>


<form action="CreditCardAuthentication.jsp" method="post">
<label for="card">Credit Card Name</label>

<select name="card" id="card">
  <optgroup label="Select Card">
      <option value="credit_card">Credit Card</option>
      <option value="debit_card">Debit Card</option>
      <option value="master_card">Master Card</option>
      <option value="visa_card">Visa Card</option>      
    </optgroup>
</select><br>
    
<label>Account No</label>
<input type="text" name="accountNo">

<label>Pin Code</label>
 <input type="text" name="pinCode"><br>
 <input type="hidden" name="totalAmount" value="<%=totalAmount%>">
<input type="submit" name="submit" value="Submit"><br>

</form>

    </body>
</html>