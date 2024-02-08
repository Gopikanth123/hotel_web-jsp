<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession session1 = request.getSession();
    if (session1 != null) {
        session.invalidate();
    }

    // Redirect the user to the login page
    response.sendRedirect("index.html");
%>
