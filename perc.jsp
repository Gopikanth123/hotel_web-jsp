<%@ page import="java.sql.*" %>
<%
    int totalBookedRooms = 0;
    int todayBookedRooms = 0;
    int yesterdayBookedRooms = 0;
    int rating = 0;
    Connection con = null;
    PreparedStatement stmTotal = null;
    PreparedStatement stmToday = null;
    PreparedStatement stmYesterday = null;
    PreparedStatement stmRating = null;
    ResultSet rsTotal = null;
    ResultSet rsToday = null;
    ResultSet rsYesterday = null;
    ResultSet rsRating = null;

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "tiger");

        stmTotal = con.prepareStatement("SELECT SUM(BOOKEDROOMS) AS TOTAL_BOOKED_ROOMS FROM BOOKINGS WHERE CHECKOUT > TRUNC(SYSDATE) AND ROOMTYPE IS NOT NULL");
        rsTotal = stmTotal.executeQuery();
        if (rsTotal.next()) {
            totalBookedRooms = rsTotal.getInt("TOTAL_BOOKED_ROOMS");
        }

        stmToday = con.prepareStatement("SELECT SUM(BOOKEDROOMS) AS TODAY_BOOKED_ROOMS FROM BOOKINGS WHERE TRUNC(CHECKIN) = TRUNC(SYSDATE+1)");
        rsToday = stmToday.executeQuery();
        if (rsToday.next()) {
            todayBookedRooms = rsToday.getInt("TODAY_BOOKED_ROOMS");
        }

        stmYesterday = con.prepareStatement("SELECT SUM(BOOKEDROOMS) AS YESTERDAY_BOOKED_ROOMS FROM BOOKINGS WHERE TRUNC(CHECKIN) = TRUNC(SYSDATE-1)");
        rsYesterday = stmYesterday.executeQuery();
        if (rsYesterday.next()) {
            yesterdayBookedRooms = rsYesterday.getInt("YESTERDAY_BOOKED_ROOMS");
        }

        stmRating = con.prepareStatement("SELECT SUM(RATING) AS S_RATING FROM RATING");
        rsRating = stmRating.executeQuery();
        if (rsRating.next()) {
            rating = rsRating.getInt("S_RATING");
        }
    } catch (Exception ee) {
        ee.printStackTrace();
    } finally {
        // Close the database resources in reverse order of creation
        if (rsRating != null) {
            try {
                rsRating.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmRating != null) {
            try {
                stmRating.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rsYesterday != null) {
            try {
                rsYesterday.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmYesterday != null) {
            try {
                stmYesterday.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rsToday != null) {
            try {
                rsToday.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmToday != null) {
            try {
                stmToday.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rsTotal != null) {
            try {
                rsTotal.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stmTotal != null) {
            try {
                stmTotal.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    session.setAttribute("totalBookedRooms", totalBookedRooms);
    session.setAttribute("todayBookedRooms", todayBookedRooms);
    session.setAttribute("yesterdayBookedRooms", yesterdayBookedRooms);
    session.setAttribute("sum_rating", rating);

    response.sendRedirect("admin.jsp");
%>
