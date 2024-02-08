<%@page import="java.sql.*"%>
<%
    String room_type = request.getParameter("roomType");
    String no_of_rooms = request.getParameter("noOfrooms");
    String cost1=request.getParameter("cost");
    int int_room_type = 0;
    int no_of_rooms_int = 0;
    int int_cost=0;
    if (room_type != null && !room_type.isEmpty()) {
        try {
            int_room_type = Integer.parseInt(room_type);
        } catch (NumberFormatException e) {
            out.println("Invalid room type: " + room_type);
        }
    }
    if (no_of_rooms != null && !no_of_rooms.isEmpty()) {
        try {
            no_of_rooms_int = Integer.parseInt(no_of_rooms);
        } catch (NumberFormatException e) {
            out.println("Invalid number of rooms: " + no_of_rooms);
        }
    }
    if (cost1!=null && !cost1.isEmpty()){
        try{
            int_cost = Integer.parseInt(cost1);
        } catch(NumberFormatException e){
            out.println("Invalid cost of rooms: " + cost1);
        }
    }
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
        PreparedStatement stm1;
        if (int_room_type == 0) {
            if(no_of_rooms_int!=0 && int_cost!=0){
                stm1 = con.prepareStatement("UPDATE rooms SET available = ?,cost=?");
                stm1.setInt(1, no_of_rooms_int);
                stm1.setInt(2, int_cost);
            }
            else if(no_of_rooms_int!=0 && int_cost==0){
                stm1 = con.prepareStatement("UPDATE rooms SET available = ?");
                stm1.setInt(1, no_of_rooms_int);
            }
            else{
                stm1 = con.prepareStatement("UPDATE rooms SET cost=?");
                stm1.setInt(1, int_cost);
            }
        } else {
            if(no_of_rooms_int!=0 && int_cost!=0){
                stm1 = con.prepareStatement("UPDATE rooms SET available = ?,cost=? WHERE code = ?");
                stm1.setInt(1, no_of_rooms_int);
                stm1.setInt(2, int_cost);
                stm1.setInt(3, int_room_type);
            }
            else if(no_of_rooms_int!=0 && int_cost==0){
                stm1 = con.prepareStatement("UPDATE rooms SET available = ? WHERE code = ?");
                stm1.setInt(1, no_of_rooms_int);
                stm1.setInt(2, int_room_type);
            }
            else{
                stm1 = con.prepareStatement("UPDATE rooms SET cost=?");
                stm1.setInt(1, int_cost);
                stm1.setInt(2, int_room_type);
            }
        }
        int rows = stm1.executeUpdate();
        if (rows > 0) {
            session.setAttribute("room", "Successfully modified!!");
        %>
            <jsp:include page="addroom.jsp"/>
        <%
        } else {
            session.setAttribute("room", "Failed to modify!!");
        %>
            <jsp:include page="addroom.jsp"/>
        <% 
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>