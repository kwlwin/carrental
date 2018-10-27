<%-- 
    Document   : book
    Created on : Jul 26, 2018, 3:47:47 AM
    Author     : Computer
--%>

<%@page import="Model.Car"%>
<%@page import="java.sql.ResultSet"%>
<html>
    <jsp:include page="layout/head.jsp" flush="true"/>
    <body>
        <jsp:include page="layout/navbar.jsp" flush="true"/>
        <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets/images/bg.jpg');" data-stellar-background-ratio="0.5" id="section-home">
            <div class="overlay"></div>
            <div class="container">
                <div class="row align-items-center text-center">
                    <div class="col-md">
                        <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Our Service</h2>
                        <p class="lead mb-5 probootstrap-animate"></p>
                    </div> 
                </div>
            </div>

        </section>
        <!-- END section -->
        <%
            Car cars = new Car();
            ResultSet crs = cars.GetWithVendor("car.id", request.getParameter("car_id"));
            int c = 0;
            if (crs.next()) {

        %>
        <section class="probootstrap-section-half d-md-flex" id="section-about">
            <div class="col-md-12">
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
                            <li class="list-group-item"><%= crs.getString("description")%></li>
                        </ul>
                        <form action="booking" method="post">
                            <input type="hidden" name="from" value="${pageContext.request.getParameter("from")}"/>
                            <input type="hidden" name="to" value="${pageContext.request.getParameter("to")}"/>
                            <input type="hidden" name="departure" value="${pageContext.request.getParameter("departure")}"/>
                            <input type="hidden" name="arrival" value="${pageContext.request.getParameter("arrival")}"/>
                            <input type="hidden" name="car_id" value="<%= crs.getString("id")%>"/>

                            <button type="submit" class="btn btn-primary btn-sm pull-right btn-book">Book Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <% }%>
        <!-- END section -->
        <jsp:include page="layout/footer.jsp" flush="true"/>
    </body>
</html>


