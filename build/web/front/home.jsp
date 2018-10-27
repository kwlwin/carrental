<%--
Document   : home
Created on : Jul 16, 2018, 4:27:28 AM
Author     : Computer
--%>
<%@page import="Model.Car"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.City"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="layout/head.jsp" flush="true"/>

    <body>
        <jsp:include page="layout/navbar.jsp" flush="true"/>
        <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets/images/bg.jpg');" data-stellar-background-ratio="0.5"  id="section-home">
            <div class="overlay"></div>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md">
                        <h2 class="heading mb-2 display-4 font-light probootstrap-animate">SUCCESS - Online Car Rental Service</h2>
                        <p class="lead mb-5 probootstrap-animate">We provide great service and hospitality and an awesome fleet of rental cars for all budgets.</p>

                    </div>
                    <div class="col-md probootstrap-animate">
                        <form action="search" class="probootstrap-form">
                            <%
                                City cities = new City();
                            %>
                            <div class="form-group">
                                <div class="row mb-3">
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="probootstrap-date-departure">Rent Type</label>
                                            <div>
                                                <label for="rentboth"  class="mr-5"><input type="radio" id="rentboth" value="both" name="rent_type" checked="">  Both</label>
                                                <label for="weekly" class="mr-5"><input type="radio" id="weekly" name="rent_type" value="weekly" >  Weekly</label>
                                                <label for="monthly"><input type="radio" id="monthly" value="monthly" name="rent_type">  Monthly</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END row -->
                                <div class="row mb-3">
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="id_label_single">From</label>
                                            <label for="id_label_single" style="width: 100%;">
                                                <select class="js-example-basic-single js-states form-control" name="from" id="id_label_single" style="width: 100%;">
                                                    <%
                                                        ResultSet rs = cities.GetAll();
                                                        int i = 0;
                                                        while (rs.next()) {
                                                            i++;
                                                    %>
                                                    <option value="<%= rs.getString("id")%>"><%= rs.getString("name")%></option>
                                                    <% }%>

                                                </select>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="id_label_single2">To</label>
                                            <div class="probootstrap_select-wrap">
                                                <label for="id_label_single2" style="width: 100%;">
                                                    <select class="js-example-basic-single js-states form-control" name="to" id="id_label_single2" style="width: 100%;">
                                                        <%
                                                            ResultSet rs2 = cities.GetAll();
                                                            int r = 0;
                                                            while (rs2.next()) {
                                                                r++;
                                                        %>
                                                        <option value="<%= rs2.getString("id")%>"><%= rs2.getString("name")%></option>
                                                        <% }%>
                                                    </select>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END row -->
                                <div class="row mb-3">
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="probootstrap-date-departure">Departure</label>
                                            <div class="probootstrap-date-wrap">
                                                <span class="icon ion-calendar"></span>
                                                <input type="text" id="probootstrap-date-departure" name="departure" class="form-control" placeholder="" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="probootstrap-date-arrival">Arrival</label>
                                            <div class="probootstrap-date-wrap">
                                                <span class="icon ion-calendar"></span>
                                                <input type="text" id="probootstrap-date-arrival" name="arrival" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END row -->

                                <div class="row mb-5">
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="probootstrap-date-departure">Direction</label>
                                            <div>
                                                <label for="both"  class="mr-5"><input type="radio" id="both" value="both" name="direction" checked="">  Both</label>
                                                <label for="round" class="mr-5"><input type="radio" id="round" name="direction" value="in-city" >  In City</label>
                                                <label for="oneway"><input type="radio" id="oneway" value="highway" name="direction">  Highway</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md">
                                        <input type="submit" value="Search" class="btn btn-primary btn-block">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </section>
        <!-- END section -->
        <section class="probootstrap_section">
            <div class="container">
                <div class="row text-center mb-5 probootstrap-animate">
                    <div class="col-md-12">
                        <h2 class="display-4 border-bottom probootstrap-section-heading">Branded Car</h2>
                    </div>
                </div>

                <div class="row probootstrap-animate">
                    <div class="col-md-12">
                        <div class="owl-carousel js-owl-carousel-2">
                            <%
                                Car cars = new Car();
                                ResultSet crs = cars.GetAllWithVendor();
                                int c = 0;
                                while (crs.next()) {
                                    i++;
                            %>
                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="${pageContext.request.contextPath}/uploads/<%= crs.getString("img")%>" alt="<%= crs.getString("name")%>" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3"><%= crs.getString("car_no")%> | <%= crs.getString("name")%></h5>
                                        <p><%= crs.getString("description")%></p>
                                    </div>
                                </div>
                            </div>
                            <!-- END slide item -->
                            <% }%>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END section -->
        <section class="probootstrap_section">
            <div class="container">
                <div class="row text-center mb-5 probootstrap-animate">
                    <div class="col-md-12">
                        <h2 class="display-4 border-bottom probootstrap-section-heading">Our Services</h2>
                    </div>
                </div>
            </div>
        </section>


        <section class="probootstrap-section-half d-md-flex" id="section-about">
            <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(assets/images/img_2.jpg)"></div>
            <div class="probootstrap-text">
                <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
                    <h2 class="heading mb-4">Who We Are</h2>
                    <p>SUCCESS online car rental service helps you, and provide you a smooth, hassle-free, and wonderful travel experience from start to finish. We are the largest online car rental service provider.</p>

                    <p>For car rental, you can choose many types of budget to luxury cars from different suppliers with very competitive prices.</p>

                    <p>Our service centers are also open 24 hours everyday to fulfil our clients' needs.</p>

                </div>
            </div>
        </section>


        <section class="probootstrap-section-half d-md-flex">
            <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(assets/images/img_3.jpg)"></div>
            <div class="probootstrap-text order-1">
                <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
                    <h2 class="heading mb-4">What we do</h2>
                    <p>We make sure that you have a great experience every time you rent a car with us.</p>
                    <p>We arrange the car rental on your behalf.  Our suppliers offer you different types of cars with competitive prices.</p>

                </div>
            </div>
        </section>
        <!-- END section -->
        <jsp:include page="layout/footer.jsp" flush="true"/>
    </body>
</html>