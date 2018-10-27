<%-- 
    Document   : form
    Created on : Jul 20, 2018, 9:19:03 AM
    Author     : Computer
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.Vendor"%>
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
                        <h1 class="page-header">Add New Car</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form action="add_cars" method="post" role="form" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label>Car No</label>
                                                <input class="form-control" name="car_no">
                                            </div>
                                            <div class="form-group">
                                                <label>Vendor</label>
                                                <select class="form-control" name="vendor_id">
                                                    <%
                                                        Vendor vendors = new Vendor();
                                                        ResultSet rs = vendors.GetAll();
                                                        int i = 0;
                                                        while (rs.next()) {
                                                            i++;
                                                    %>
                                                    <option value="<%= rs.getString("id")%>"><%= rs.getString("name")%></option>
                                                    <% }%>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Rent Type</label>
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="renttype0" name="rent_type" class="custom-control-input" value="both">
                                                    <label class="custom-control-label" for="renttype0">Both</label>
                                                </div>
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="renttype1" name="rent_type" class="custom-control-input" value="weekly">
                                                    <label class="custom-control-label" for="renttype1">Weekly</label>
                                                </div>
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="renttype2" name="rent_type" class="custom-control-input" value="monthly">
                                                    <label class="custom-control-label" for="renttype2">Monthly</label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Booking Accept Type</label>
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="bookingaccepttype0" name="booking_accept_type" class="custom-control-input" value="both">
                                                    <label class="custom-control-label" for="bookingaccepttype0">Both</label>
                                                </div>
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="bookingaccepttype1" name="booking_accept_type" class="custom-control-input" value="in-city">
                                                    <label class="custom-control-label" for="bookingaccepttype1">In-City</label>
                                                </div>
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="bookingaccepttype2" name="booking_accept_type" class="custom-control-input" value="highway">
                                                    <label class="custom-control-label" for="bookingaccepttype2">Highway</label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Weekly Rate</label>
                                                <input type="number" class="form-control" name="weekly_rate">
                                            </div>
                                            <div class="form-group">
                                                <label>Monthly Rate</label>
                                                <input type="number" class="form-control" name="monthly_rate">
                                            </div>
                                            <div class="form-group">
                                                <label>Description</label>
                                                <textarea class="form-control" name="description"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Car Image</label>
                                                <input type="file" name="car_image">
                                            </div>
                                            <div class="pull-right">

                                                <button type="reset" class="btn btn-default">Reset</button>
                                                <button type="submit" class="btn btn-default">Save</button>
                                            </div>

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

