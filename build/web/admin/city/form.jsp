<%-- 
    Document   : form
    Created on : Jul 20, 2018, 9:19:03 AM
    Author     : Computer
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.City"%>
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
                        <h1 class="page-header">Add New City</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <% if (request.getParameterMap().containsKey("action")) {%>
                                        <%
                                            City city = new City();
                                            ResultSet rs = city.GetBy("id", request.getParameter("id"));
                                            if (rs.next()) {

                                        %>
                                        <form action="add_cities" method="post" role="form">
                                            <input type="hidden" name="action" value="${pageContext.request.getParameter("action")}"/>
                                            <input type="hidden" name="id" value="${pageContext.request.getParameter("id")}"/>
                                            <div class="form-group">
                                                <label>City Name</label>
                                                <input class="form-control" name="city_name" value="<%= rs.getString("name")%>">
                                            </div>
                                            <div class="pull-right">

                                                <button type="submit" class="btn btn-default">Update</button>
                                            </div>

                                        </form>
                                        <% }%>
                                        <% } else {%>
                                        <form action="add_cities" method="post" role="form">
                                            <div class="form-group">
                                                <label>City Name</label>
                                                <input class="form-control" name="city_name">
                                            </div>
                                            <div class="pull-right">

                                                <button type="reset" class="btn btn-default">Reset</button>
                                                <button type="submit" class="btn btn-default">Save</button>
                                            </div>

                                        </form>
                                        <% }%>
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

