<%-- 
    Document   : form
    Created on : Jul 20, 2018, 9:19:03 AM
    Author     : Computer
--%>
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
                                        <form role="form">
                                            <div class="form-group">
                                                <label>Car No</label>
                                                <input class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Vendor</label>
                                                <input class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Rent Type</label>
                                                <input class="form-control">
                                            </div>
                                            
                                            <div class="form-group">
                                                <label>Rent Price / Day</label>
                                                <input class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Description</label>
                                                <textarea class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label>Car Image</label>
                                                <input type="file">
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

