<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
java.util.Date currentDate = new java.util.Date();
java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
String email = (String) session.getAttribute("user");
String cost = request.getParameter("total_cost");
String card = request.getParameter("card_number");
int costInt = Integer.parseInt(cost);
String book_rooms = request.getParameter("booked_rooms");
String room_type1 = request.getParameter("room_type");
int book_room_int = Integer.parseInt(book_rooms);
String checkin1 = (String) session.getAttribute("checkin");
String checkout1 = (String) session.getAttribute("checkout");
java.sql.Date c1 = java.sql.Date.valueOf(checkin1);
java.sql.Date c2 = java.sql.Date.valueOf(checkout1);
String payment = request.getParameter("payment_type");
session.setAttribute("payment_type1", payment);

try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");

    // Insert into transaction table
    PreparedStatement stm = con.prepareStatement("INSERT INTO transaction (email, card_number, upi, phone, total_amount, payment_type, booking_id) VALUES (?,?,?,?,?,?,booking_id_seq.nextval)");
    stm.setString(1, email);
    stm.setString(2, card);
    stm.setString(3, "-");
    stm.setString(4, "-");
    stm.setInt(5, costInt);
    stm.setString(6, payment);
    int rows = stm.executeUpdate();
    stm.close();

    if (rows > 0) {
        // Retrieve the T_ID and booking_id of the inserted transaction
        PreparedStatement selectStm = con.prepareStatement("SELECT booking_id, T_ID FROM transaction WHERE booking_id = (SELECT MAX(booking_id) FROM transaction)");
        ResultSet rs = selectStm.executeQuery();
        String t_id = "";
        String book_id = "";
        if (rs.next()) {
            t_id = rs.getString("T_ID");
            book_id = rs.getString("booking_id");
        }
        rs.close();
        selectStm.close();
        session.setAttribute("t_id", t_id);
        session.setAttribute("book_id", book_id);

        // Insert into bookings table
        PreparedStatement bookstm = con.prepareStatement("INSERT INTO bookings (email, bookdate, checkin, checkout, roomtype, bookedrooms, totalamount, b_id) VALUES (?,?,?,?,?,?,?,?)");
        bookstm.setString(1, email);
        bookstm.setDate(2, sqlDate);
        bookstm.setDate(3, c1);
        bookstm.setDate(4, c2);
        bookstm.setString(5, room_type1);
        bookstm.setInt(6, book_room_int);
        bookstm.setInt(7, costInt);
        bookstm.setString(8, book_id);
        int rows1 = bookstm.executeUpdate();
        bookstm.close();

        if (rows1 > 0) {
        %>
            <jsp:forward page="card1.jsp"/>
        <%
        } else {
        %>
            <jsp:forward page="cardpay.jsp"/>
        <%
        }
    } else {
    %>
        <jsp:forward page="cardpay.jsp"/>
    <%
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
