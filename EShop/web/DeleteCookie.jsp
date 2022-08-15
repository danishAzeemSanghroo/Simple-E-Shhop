

<%
	String prodName=request.getParameter("prodName");
	
	Cookie ck=new Cookie(prodName,"");
	ck.setMaxAge(0);
	response.addCookie(ck);
	response.sendRedirect("ShowBasket.jsp");
	
%>
