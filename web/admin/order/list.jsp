<%-- 
    Document   : list
    Created on : Jul 20, 2018, 9:18:41 AM
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
                        <h1 class="page-header">Orders List</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>Car No</th>
                                                <th>Order Date</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Departure</th>
                                                <th>Arrival Date</th>
                                                <th>Customer Name</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                Booking bookings = new Booking();
                                                ResultSet rs = bookings.getAllBooking();
                                                int i = 0;
                                                while (rs.next()) {
                                                    i++;
                                            %>
                                            <tr class="gradeU">
                                                <td><%= i%></td>

                                                <td><%= rs.getString("car_no")%></td>
                                                <td><%= rs.getString("booking_date")%></td>
                                                <td><%= rs.getString("fromlocation")%></td>
                                                <td><%= rs.getString("tolocation")%></td>
                                                <td><%= rs.getString("departure")%></td>
                                                <td><%= rs.getString("arrival")%></td>
                                                <td><%= rs.getString("first_name")%> <%= rs.getString("last_name")%></td>
                                                <td><%= rs.getString("status").toUpperCase() %></td>
                                                <td>
                                                    <a href="order_detail?order_id=<%= rs.getString("id")%>" class="btn btn-info">View</a>
                                                </td>

                                            </tr>
                                            <% }%>

                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->

                            </div>
                            <!-- /.panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
        <jsp:include page="../layout/footer.jsp" flush="true"/>
        <script src="${pageContext.request.contextPath}/assets/backend/js/dataTables/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/backend/js/dataTables/dataTables.bootstrap.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').DataTable({
                    responsive: true
                });
            });
        </script>
    </body>
</html>
