<%-- 
    Document   : search
    Created on : Jul 20, 2018, 8:57:13 AM
    Author     : Computer
--%>

<%@page import="Model.Car"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="Model.City"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="layout/head.jsp" flush="true"/>

    <body>
        <jsp:include page="layout/navbar.jsp" flush="true"/>
        <section class="probootstrap-cover custom-cover-search overflow-hidden relative"  style="background-image: url('assets/images/bg.jpg');" data-stellar-background-ratio="0.5"  id="section-home">
            <div class="overlay"></div>
            <div class="container">
                <div class="row align-items-center">
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
                                                <label for="rentboth"  class="mr-5"><input type="radio" id="rentboth" value="both" name="rent_type" <%= (request.getParameter("rent_type").equals("both")) ? "checked" : ""%>>  Both</label>
                                                <label for="weekly" class="mr-5"><input type="radio" id="weekly" name="rent_type" value="weekly" <%= (request.getParameter("rent_type").equals("weekly")) ? "checked" : ""%>>  Weekly</label>
                                                <label for="monthly"><input type="radio" id="monthly" value="monthly" name="rent_type" <%= (request.getParameter("rent_type").equals("monthly")) ? "checked" : ""%>>  Monthly</label>
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
                                                    <% if (request.getParameter("from") != null && request.getParameter("from").equals(rs.getString("id"))) {%>
                                                    <option value="<%= rs.getString("id")%>" selected="true"><%= rs.getString("name")%></option>
                                                    <% } else {%>
                                                    <option value="<%= rs.getString("id")%>" ><%= rs.getString("name")%></option>
                                                    <% } %>
                                                    <% } %>
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
                                                        <% if (request.getParameter("to") != null && request.getParameter("to").equals(rs2.getString("id"))) {%>
                                                        <option value="<%= rs2.getString("id")%>" selected="true"><%= rs2.getString("name")%></option>
                                                        <% } else {%>
                                                        <option value="<%= rs2.getString("id")%>" ><%= rs2.getString("name")%></option>
                                                        <% } %>
                                                        <% }%>
                                                    </select>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END row -->
                                <div class="row mb-5">
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="probootstrap-date-departure">Departure</label>
                                            <div class="probootstrap-date-wrap">
                                                <span class="icon ion-calendar"></span>
                                                <input type="text" id="probootstrap-date-departure" name="departure" class="form-control" placeholder="" value="${pageContext.request.getParameter("departure")}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="probootstrap-date-arrival">Arrival</label>
                                            <div class="probootstrap-date-wrap">
                                                <span class="icon ion-calendar"></span>
                                                <input type="text" id="probootstrap-date-arrival" name="arrival" class="form-control" placeholder="" value="${pageContext.request.getParameter("arrival")}">
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
                                                <label for="both"  class="mr-5"><input type="radio" id="both" value="both" name="direction" <%= (request.getParameter("direction").equals("both")) ? "checked" : ""%>>  Both</label>
                                                <label for="round" class="mr-5"><input type="radio" id="round" name="direction" value="in-city" <%= (request.getParameter("direction").equals("in-city")) ? "checked" : ""%>>  In City</label>
                                                <label for="oneway"><input type="radio" id="oneway" value="highway" name="direction" <%= (request.getParameter("direction").equals("highway")) ? "checked" : ""%>>  Highway</label>
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
        <section class="probootstrap_section" id="section-city-guides">
            <div class="container-fluid">
                <div class="row">
                    <%
                        Car cars = new Car();
                        ResultSet crs = cars.SearhCars(request);
                        int c = 0;
                        while (crs.next()) {
                            i++;
                    %>
                    <div class="col-md-6">

                        <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                            <div class="probootstrap-media-image" align="center">
                                <!--style="background-image: url(${pageContext.request.contextPath}/uploads/<%= crs.getString("img")%>)"-->
                                <img src="${pageContext.request.contextPath}/uploads/<%= crs.getString("img")%>" style="width: 70%"/>
                            </div>
                            <div class="media-body">
                                <!--<p><%= crs.getString("description")%></p>-->

                                <ul class="list-group list-group-flush mb-3">
                                    <li class="list-group-item"><h5>Description</h5></li>
                                    <li class="list-group-item"><%= crs.getString("car_no")%> (<%= crs.getString("name")%>)</li>
                                    <li class="list-group-item">
                                        <% if (crs.getString("rent_type").equals("weekly")) {%>
                                        Weekly Rate : S$<%= crs.getString("weekly_rate")%>
                                        <%}
                                            if (crs.getString("rent_type").equals("monthly")) {%>
                                        Monthly Rate : S$<%= crs.getString("monthly_rate")%>
                                        <% } %>
                                        <%if (crs.getString("rent_type").equals("both")) {%>
                                        Weekly Rate : S$<%= crs.getString("weekly_rate")%> | Monthly Rate : S$<%= crs.getString("monthly_rate")%>
                                        <% }%>

                                    </li>
                                </ul>
                                <form action="booking" method="get">
                                    <input type="hidden" name="from" value="${pageContext.request.getParameter("from")}"/>
                                    <input type="hidden" name="to" value="${pageContext.request.getParameter("to")}"/>
                                    <input type="hidden" name="departure" value="${pageContext.request.getParameter("departure")}"/>
                                    <input type="hidden" name="arrival" value="${pageContext.request.getParameter("arrival")}"/>
                                    <input type="hidden" name="car_id" value="<%= crs.getString("id")%>"/>

                                    <button type="submit" class="btn btn-primary btn-sm pull-right btn-book">Book Now</button>
                                </form>
                                <!--<a href="booking?book=<%= crs.getString("id")%>" class="btn btn-primary btn-sm pull-right btn-book">Book Now</a>-->

                            </div>
                        </div>

                    </div>
                    <% }%>
                </div>


            </div>
        </section>
        <!-- END section -->
        <jsp:include page="layout/footer.jsp" flush="true"/>
    </body>
</html>