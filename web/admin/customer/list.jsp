<%-- 
    Document   : list
    Created on : Jul 20, 2018, 9:18:41 AM
    Author     : Computer
--%>

<%@page import="Model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
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
                        <h1 class="page-header">Customers List</h1>
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
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Email</th>
                                                <th>Phone No</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <%
                                                User users = new User();
                                                ResultSet rs = users.GetAll();
                                                int i = 0;
                                                while (rs.next()) {
                                                    if (rs.getString("user_type").equals("customer")) {
                                                        i++;
                                            %>
                                            <tr class="gradeU">
                                                <td><%= i%></td>
                                                <td><%= rs.getString("first_name")%></td>
                                                <td><%= rs.getString("last_name")%></td>
                                                <td><%= rs.getString("email")%></td>
                                                <td><%= rs.getString("phone")%></td>

                                            </tr>
                                            <% } %>
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
