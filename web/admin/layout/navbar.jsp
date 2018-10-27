<%-- 
    Document   : navbar
    Created on : Jul 18, 2018, 8:36:57 PM
    Author     : Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="index.html">Success Car Rental Service</a>
    </div>

    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>

    

    <ul class="nav navbar-right navbar-top-links">
        
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> <%= ((String[])session.getAttribute("logged"))[0]  %> <%= ((String[])session.getAttribute("logged"))[1]  %><b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-user">
               
                <li><a href="logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                </li>
            </ul>
        </li>
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                
                <li>
                    <a href="dashboard"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>

                <li>
                    <a href="#"><i class="fa fa-group fa-fw"></i> Vendors<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="vendors">List Vendors</a>
                        </li>
                        <li>
                            <a href="add_vendors">Add Vendor</a>
                        </li>
                    </ul>
                </li>
                
                
                <li>
                    <a href="#"><i class="fa fa-map fa-fw"></i> Cities<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="cities">List Cities</a>
                        </li>
                        <li>
                            <a href="add_cities">Add City</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-car fa-fw"></i> Cars<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="cars">List Cars</a>
                        </li>
                        <li>
                            <a href="add_cars">Add Car</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="customers"><i class="fa fa-user fa-fw"></i> Customers</a>
                </li>
                <li>
                    <a href="orders"><i class="fa fa-paper-plane fa-fw"></i> Orders</a>
                </li>
            </ul>
        </div>
    </div>
</nav>