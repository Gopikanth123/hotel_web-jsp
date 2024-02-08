<%@page import="java.sql.*"%>
<%@ page import="java.time.LocalDate" %>
<%
LocalDate currentDate = LocalDate.now();
java.sql.Date sqlDate = java.sql.Date.valueOf(currentDate);
String email=(String) session.getAttribute("user");
String payment=request.getParameter("payment_type");
int cost=(int) session.getAttribute("totalCost");
if(payment != null && (payment.equals("phonepay") || payment.equals("gpay") || payment.equals("paytm"))) {
  String mobile=request.getParameter("phone");
  try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");
    PreparedStatement stm = con.prepareStatement("insert into user_account (account_date, email, password, address, city, mobile, total_cost) values (?, ?, ?, ?, ?, ?, ?)");
    stm.setDate(1, sqlDate);
    stm.setString(2, email);
    stm.setString(3, "123456789"); // Password should not be hardcoded. Use a secure password hashing mechanism instead.
    stm.setString(4, "-"); // Address and city should be taken as input from the user.
    stm.setString(5, "-");
    stm.setInt(6, mobile);
    stm.setInt(7, cost);
    int rows = stm.executeUpdate();
    if (rows > 0) {
      out.println("<h4>Account created successfully.</h4>");
    } else {
      out.println("<h4>Failed to create account.</h4>");
    }
    con.close(); // Close the database connection after use.
  } catch(Exception e) {
    e.printStackTrace(); // Print the stack trace for debugging purposes.
  }
}
%>