<%@page import="java.sql.*"%>
<%
 String card=request.getParameter("card");
 int accountNo=Integer.parseInt(request.getParameter("accountNo"));
 int pinCode=Integer.parseInt(request.getParameter("pinCode"));
 int totalAmount=Integer.parseInt(request.getParameter("totalAmount"));
 
   //out.println(card+" "+accountNo+" "+pinCode+" "+totalAmount);
try{
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                String path="F:\\eShop\\eShop.accdb";
                String url = "jdbc:ucanaccess://"+path;      
               Connection con=DriverManager.getConnection(url);
                
	
		Statement st=con.createStatement();
		String query="select * from credit_card where account_no="+accountNo+" and card_type='"+card+"'";
		ResultSet rs=st.executeQuery(query);
		while(rs.next())
                {
                    int balance=rs.getInt("balance");
//                    out.println(balance);
                    if(balance>totalAmount)
                    {
                    int newBalance=balance-totalAmount;
                      String query1="update credit_card set balance="+newBalance+" where account_no="+accountNo;
                        int row=st.executeUpdate(query1);

                        out.println("Order done \nYour new Balance is "+newBalance);
                    }
                    else
                    {
                        out.println("Yo have Insufficient balance in your account");
                    }
    }
                
}catch(Exception e)
	{
	out.println(e);
	}
    


%>