<%
    int imgId=Integer.parseInt(request.getParameter("prodIdImg"));
    for(int i=1;i<=4;i++)
    {
    %>
    <img src="Images/<%=imgId%>/<%=i%>.jpg" width="200" height="200" alt="not found image" >
    <%
    }
    
//    out.println("Id="+imgId);
%>