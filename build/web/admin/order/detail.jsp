<%-- 
    Document   : form
    Created on : Jul 20, 2018, 9:19:03 AM
    Author     : Computer
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.Booking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../layout/head.jsp" flush="true"/>
    <body>
        <jsp:include page="../layout/navbar.jsp" flush="true"/>
        <div id="wrapper">
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Order Detail</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form role="form">
                                            <%
                                                Booking bookings = new Booking();
                                                ResultSet rs = bookings.getByBooking("booking.id", request.getParameter("order_id"));
                                                int i = 0;
                                                if(rs.next()){
                                            %>
                                            <div class="form-group">
                                                <label>Car No</label>
                                                <input class="form-control" value="<%= rs.getString("car_no") %>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label>Order Date</label>
                                                <input class="form-control" value="<%= rs.getString("booking_date") %>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label>From</label>
                                                <input class="form-control" value="<%= rs.getString("fromlocation") %>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label>To</label>
                                                <input class="form-control" value="<%= rs.getString("tolocation") %>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label>Departure Date</label>
                                                <input class="form-control" value="<%= rs.getString("departure") %>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label>Arrival Date</label>
                                                <input class="form-control" value="<%= rs.getString("arrival") %>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label>Customer Name</label>
                                                <input class="form-control" value="<%= rs.getString("first_name") %> <%= rs.getString("last_name") %>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label>Customer Email</label>
                                                <input class="form-control" value="<%= rs.getString("email") %>" disabled="">
                                            </div>
                                            <div class="form-group">
                                                <label>Phone</label>
                                                <input class="form-control" value="<%= rs.getString("phone") %>" disabled="">
                                            </div>
                                            <div class="pull-right">
                                                <a href="order_detail?order_id=${pageContext.request.getParameter("order_id")}&status=approved" class="btn btn-default">Approve</a>
                                                <a href="order_detail?order_id=${pageContext.request.getParameter("order_id")}&status=canceled" class="btn btn-default">Cancel</a>
                                            </div>
                                            <% } %>
                                        </form>
                                    </div>
                                    <!-- /.col-lg-6 (nested) -->
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
        <jsp:include page="../layout/footer.jsp" flush="true"/>
    </body>
</html>

