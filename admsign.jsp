<%@ page import="java.sql.*" %>
<%
if(request.getMethod().equals("POST")) {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String ph = request.getParameter("ph");
    String add = request.getParameter("add");
    String pin = request.getParameter("pin");
    String psw = request.getParameter("psw");
    String psw_repeat = request.getParameter("psw-repeat");

    if(!psw.equals(psw_repeat))
    {
%>    
        <h1>Passwords do not match.</h1>
<%
    }
    else
    {
        if(!pin.equals("123456789")) 
        {
%>
            <h1 style="background-color: black; color:aliceblue">Admin pin does not match....</h1>
            <jsp:include page="sign.html"/>
<%
        }
        else 
        {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                try (Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
                     PreparedStatement check_stm=con.prepareStatement("select * from admin_signup where email=?");
                     PreparedStatement stm=con.prepareStatement("insert into admin_signup(name,email,mobile,address,password) values (?, ?, ?, ?, ?)")) {

                    check_stm.setString(1, email);
                    ResultSet check_rs=check_stm.executeQuery();
                    if (check_rs.next()) 
                    {
                        out.println("<h4>Email already exists.</h4>");
%>
                        <jsp:include page="sign.html"/>
<%
                    }
                    else
                    {
                        stm.setString(1, name);
                        stm.setString(2, email);
                        stm.setString(3, ph);
                        stm.setString(4, add);
                        stm.setString(5, psw);
                        int rows = stm.executeUpdate();
                        if (rows>0)
                        {
                            out.println("<h4>Account created successfully.</h4>");          
%>
                            <jsp:forward page="index.html"/>
<%
                        }
                        else
                        {
                            out.println("<h4>Failed to create account.</h4>"); 
%>
                            <h1 style="background-color: black; color:aliceblue">Failed to create account.</h1>
                            <jsp:include page="sign.html"/>
<%
                        }
                    }
                }
            } catch(Exception e) {
                System.out.println(e);
            }
        }
    }
}
%>
