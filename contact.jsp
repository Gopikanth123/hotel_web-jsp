<%@ page import="java.sql.*"%>
<%

String name=request.getParameter("name");
String email=request.getParameter("email");
String subject=request.getParameter("subject");
String phone=request.getParameter("phone");
String message=request.getParameter("message");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
    PreparedStatement stm=con.prepareStatement("insert into contact values(?,?,?,?,?)");
    stm.setString(1,name);
    stm.setString(2,email);
    stm.setString(3,subject);
    stm.setString(4,phone);
    stm.setString(5,message);
    int rows = stm.executeUpdate();
    if(rows>0){
        session.setAttribute("msg1","Your response has sen't successfully");
    %>
            <jsp:forward page="contact1.jsp"/>
    <%
        }
        else{
            session.setAttribute("msg1","Fialed to send your response");
    %>
            <jsp:include page="contact1.jsp"/>
    <%
        }
    }
    catch(Exception e) {
        e.printStackTrace();
      }

%>

