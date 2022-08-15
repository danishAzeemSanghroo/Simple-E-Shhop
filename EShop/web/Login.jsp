<%@page import="java.sql.*"%>
<%
    String email=request.getParameter("email");
    String pass=request.getParameter("password");
    int totalAmount=Integer.parseInt(request.getParameter("totalAmount"));

try{
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                String path="F:\\eShop\\eShop.accdb";
                String url = "jdbc:ucanaccess://"+path;      
               Connection con=DriverManager.getConnection(url);
                
		String email1="";
                String pass1="";
		Statement st=con.createStatement();
		String query="select * from customer";
		ResultSet rs=st.executeQuery(query);
		while(rs.next())
                {    
                email1=rs.getString("email");
                pass1=rs.getString("pass");
                        if(email.equals(email1) && pass.equals(pass1))
                        {
                      
                            response.sendRedirect("CreateCardForm.jsp?totalAmount="+totalAmount);
                        }
//                        else if(!email.equals(rs.isLast()) && !pass.equals(rs.isLast()))
//                        {
//                            out.println("Invalid Email and Password");
//                        }
                }
                
                

        


}catch(Exception e)
	{
	out.println(e);
	}


%>