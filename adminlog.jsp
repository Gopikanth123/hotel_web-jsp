<%@ page import="java.sql.*" %>
<%
String email = request.getParameter("email");
String password = request.getParameter("pass");

try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
    PreparedStatement stm = con.prepareStatement("SELECT * FROM admin_signup WHERE email=? AND password=?");
    stm.setString(1, email);
    stm.setString(2, password);
    ResultSet rs = stm.executeQuery();

    if (rs.next()) {
        session.setAttribute("user", email);
        response.sendRedirect("perc.jsp");
    } else {
        request.setAttribute("errorMessage", "Invalid user credentials");
        request.getRequestDispatcher("sign.html").include(request, response);
    }

    con.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>
