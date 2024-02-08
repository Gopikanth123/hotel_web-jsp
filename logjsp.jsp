<%@ page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String password=request.getParameter("pass");

try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
    PreparedStatement stm=con.prepareStatement("select * from user_signup where email=? and password=?");
    stm.setString(1,email);
    stm.setString(2,password);
    ResultSet rs=stm.executeQuery();
    int x=0;
    while(rs.next())
    {
        x++;
        session.setAttribute("user",email);
        String mobile = rs.getString("mobile");
        session.setAttribute("phone",mobile);
        %>
        <jsp:forward page="userhome.jsp"/>
        <%
    }
    if(x==0)
    {
        request.setAttribute("errorMessage", "Invalid user credentials");
        %>
        <jsp:include page="log.html"/>
        <%
    }
}
catch(Exception e)
{
    System.out.println(e);
}
%>
