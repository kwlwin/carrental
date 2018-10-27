<%-- 
    Document   : thankyou
    Created on : Jul 26, 2018, 4:20:03 AM
    Author     : Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="layout/head.jsp" flush="true"/>
    <body>
        <jsp:include page="layout/navbar.jsp" flush="true"/>
        <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets/images/bg.jpg');" data-stellar-background-ratio="0.5" id="section-home">
            <div class="overlay"></div>
            <div class="container">
                <div class="row align-items-center text-center">
                    <div class="col-md">
                        <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Thank you for your booking!</h2>
                        <p class="lead mb-5 probootstrap-animate"><a href="home">Go To Home Page</a></p>
                    </div> 
                </div>
            </div>

        </section>


        
        <!-- END section -->
        <jsp:include page="layout/footer.jsp" flush="true"/>
    </body>
</html>

