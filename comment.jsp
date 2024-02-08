<%@ page import="java.sql.*"%>
<%

String email = (String) session.getAttribute("user");
String rate=request.getParameter("rating");
String com=request.getParameter("comment");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
    PreparedStatement check_stm=con.prepareStatement("select * from rating where email=?");
    check_stm.setString(1, email);
    ResultSet check_rs=check_stm.executeQuery();
    int repeat=1;
    while (check_rs.next()){
        repeat++;
    }
    if (repeat<=5){
        PreparedStatement stm=con.prepareStatement("insert into rating values(?,?,?)");
        stm.setString(1,email);
        stm.setString(2,rate);
        stm.setString(3,com);
        int rows = stm.executeUpdate();
        if(rows>0){
            session.setAttribute("msg","Response successfully submitted");
    %>
            <jsp:include page="feedback1.jsp"/>
    <%
        }
        else{
            session.setAttribute("msg","Failed to submit the response");
    %>
            <jsp:include page="feedback1.jsp"/>
    <%
        }
    }
    else{
        session.setAttribute("msg","You can't submit more than 5 responses");
    %>
            <jsp:include page="feedback1.jsp"/>
    <%
    }
    
    }
    catch(Exception e) {
        e.printStackTrace();
      }

%>

