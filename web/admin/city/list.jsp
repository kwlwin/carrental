<%-- 
    Document   : list
    Created on : Jul 20, 2018, 9:18:41 AM
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
                        <h1 class="page-header">Cities List</h1>
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
                                                <th>Vendor</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                City cities = new City();
                                                ResultSet rs = cities.GetAll();
                                                int i = 0;
                                                while (rs.next()) {
                                                    i++;
                                            %>
                                            <tr class="gradeU">
                                                <td><%= i%></td>
                                                <td><%= rs.getString("name")%></td>
                                                <td>
                                                    <a href="add_cities?id=<%= rs.getString("id")%>&action=edit" class="btn btn-info">Edit</a>
                                                    <a href="cities?id=<%= rs.getString("id")%>&action=delete" class="btn btn-danger">Delete</a>
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
            $(document).ready(function() {
                $('#dataTables-example').DataTable({
                        responsive: true
                });
            });
        </script>
    </body>
</html>
