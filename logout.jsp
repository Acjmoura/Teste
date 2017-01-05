<%@page contentType="text/html; charset=iso-8859-1" language="java" session="true"
%><%
	
    System.out.println("==============================================================");	 
    System.out.println("    Logout.jsp Session: "+request.getSession().getId());	 
    System.out.println("==============================================================");
	request.getSession().setAttribute("logout", "logout");
	request.getSession().invalidate();
    response.sendRedirect(request.getContextPath() + "/josso_logout/");
	//response.sendRedirect((String)request.getAttribute("org.josso.agent.gateway-logout-url"));

%>