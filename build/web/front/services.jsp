<%-- 
    Document   : services
    Created on : Jul 25, 2018, 6:16:49 AM
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
                        <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Our Service</h2>
                        <p class="lead mb-5 probootstrap-animate"></p>
                    </div> 
                </div>
            </div>

        </section>
        <!-- END section -->
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

