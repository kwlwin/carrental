<%-- 
    Document   : navbar
    Created on : Jul 16, 2018, 5:16:26 PM
    Author     : Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
        <a class="navbar-brand" href="/home">Success</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="services">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="contact">Contact Us</a></li>

                <% if (session.getAttribute("logged") != null) { %>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
                    <% } else { %>
                <li class="nav-item"><a class="nav-link" href="login">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="register">Register</a></li>
                    <% }%>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->
