<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.*"%>
<%
    String firstName=request.getParameter("firstName");
    String lastName=request.getParameter("lastName");
    String email1=request.getParameter("email1");
    String pass=request.getParameter("pass");
    String confirmPass=request.getParameter("confirmPass");
    String address=request.getParameter("address");
    int contactNo=Integer.parseInt(request.getParameter("contact"));
    Date dateOfCreate=Date.valueOf(request.getParameter("dateOfCreate"));
    String remarks=request.getParameter("remarks");
    out.println(firstName+" "+lastName+" "+email1+" "+pass+" "+confirmPass+" "+address+" "+contactNo+" "+dateOfCreate+" "+remarks);
    
try{
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                String path="F:\\eShop\\eShop.accdb";
                String url = "jdbc:ucanaccess://"+path;      
               Connection con=DriverManager.getConnection(url);
                
		
		Statement st=con.createStatement();
		if(email1!="" && pass.equals(confirmPass) )
                {
		String query="insert into customer(first_name,last_name,email,pass,confirm_pass,address,contact_no,date_of_create,remarks) values ('"+firstName+"','"+lastName+"','"+email1+"','"+pass+"','"+confirmPass+"','"+address+"',"+contactNo+",#"+dateOfCreate+"#,'"+remarks+"')";
		st.executeUpdate(query);
                
		response.sendRedirect("Shipment.jsp");
                }
                else
                {
                    out.println("Fill Correct Data");
                }
        


}catch(Exception e)
	{
	out.println(e);
	}

    
    
%>