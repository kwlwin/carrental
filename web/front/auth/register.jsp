<%-- 
    Document   : register
    Created on : Jul 19, 2018, 4:41:38 PM
    Author     : Computer
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../layout/head.jsp" flush="true"/>

    <body>
        <jsp:include page="../layout/navbar.jsp" flush="true"/>
        <section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('assets/images/bg.jpg');" data-stellar-background-ratio="0.5"  id="section-home">
            <div class="overlay"></div>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md">
                        <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Car Rental - Search, Compare & Save!</h2>
                        <p class="lead mb-5 probootstrap-animate">We provide great service and hospitality and an awesome fleet of rental cars for all budgets.</p>

                    </div>
                    <div class="col-md probootstrap-animate">
                        <form action="register" method="post" class="probootstrap-form">
                            <div class="form-group">
                                <div class="row mb-2">
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="id_label_single">First Name</label>
                                            <label for="id_label_single" style="width: 100%;">
                                                <input type="text" name="first_name" class="form-control" placeholder="Enter Your First Name">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="id_label_single2">Last Name</label>
                                            <div class="form-group">
                                                <label for="id_label_single2" style="width: 100%;">
                                                    <input type="text" name="last_name" class="form-control" placeholder="Enter Your Last Name">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END row -->
                                <div class="row mb-2">
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="probootstrap-date-departure">Your Email</label>
                                            <div class="probootstrap-date-wrap">
                                                <span class="icon ion-email"></span>
                                                <input type="email" name="email_address" class="form-control" placeholder="Enter Your Email">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END row -->
                                <div class="row mb-3">
                                    <div class="col-md">
                                        <div class="form-group">
                                            <label for="probootstrap-date-departure">Your Password</label>
                                            <div class="probootstrap-date-wrap">
                                                <span class="icon ion-locked"></span>
                                                <input type="password" name="password" class="form-control" placeholder="Enter Your Password">
                                            </div>
                                            <div class="text-right">
                                                <span><a href="login">Have a Account?</a></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END row -->
                                <div class="row">
<!--                                    <div class="col-md">
                                        <label for="round" class="mr-5"><input type="radio" id="round" name="direction" checked="">  In City</label>
                                        <label for="oneway"><input type="radio" id="oneway" name="direction">  Highway</label>
                                    </div>-->
                                    <div class="col-md">
                                        <input type="submit" value="Register" class="btn btn-primary btn-block">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </section>
        <!-- END section -->
<!--        <section class="probootstrap_section">
            <div class="container">
                <div class="row text-center mb-5 probootstrap-animate">
                    <div class="col-md-12">
                        <h2 class="display-4 border-bottom probootstrap-section-heading">Branded Car</h2>
                    </div>
                </div>

                <div class="row probootstrap-animate">
                    <div class="col-md-12">
                        <div class="owl-carousel js-owl-carousel-2">
                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_2.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_1.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_3.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_4.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_5.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 


                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_2.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_1.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_3.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_4.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                            <div>
                                <div class="media probootstrap-media d-block align-items-stretch mb-4 probootstrap-animate">
                                    <img src="assets/images/sq_img_5.jpg" alt="Free Template by uiCookies" class="img-fluid">
                                    <div class="media-body">
                                        <h5 class="mb-3">02. Service Title Here</h5>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                    </div>
                                </div>
                            </div>
                             END slide item 

                        </div>
                    </div>
                </div>
            </div>
        </section>-->
        <!-- END section -->
<!--        <section class="probootstrap_section">
            <div class="container">
                <div class="row text-center mb-5 probootstrap-animate">
                    <div class="col-md-12">
                        <h2 class="display-4 border-bottom probootstrap-section-heading">Our Services</h2>
                    </div>
                </div>
            </div>
        </section>-->


<!--        <section class="probootstrap-section-half d-md-flex" id="section-about">
            <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(assets/images/img_2.jpg)"></div>
            <div class="probootstrap-text">
                <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
                    <h2 class="heading mb-4">Customer Service</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                    <p><a href="#" class="btn btn-primary">Read More</a></p>
                </div>
            </div>
        </section>-->


<!--        <section class="probootstrap-section-half d-md-flex">
            <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(assets/images/img_3.jpg)"></div>
            <div class="probootstrap-text order-1">
                <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
                    <h2 class="heading mb-4">Payment Options</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                    <p><a href="#" class="btn btn-primary">Learn More</a></p>
                </div>
            </div>
        </section>-->
        <!-- END section -->
        <jsp:include page="../layout/footer.jsp" flush="true"/>
    </body>
</html>