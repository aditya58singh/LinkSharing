<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Latest compiled and minified CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <style>
        .med {
            margin-top: 100px;
        }
    </style>
<title>Link Sharing</title>
</head>

<body>
<div class="container">
    <%@include file="Header.jsp" %>


    <div class="med">
        <div class="col-md-12">
            <div class="col-md-7">
                <ul class="list-group">
                    <li class="list-group-item" style="background:lightgray" ;>Recent Share</li>
                    <li class="list-group-item">
                        <div class="media media-left">
                            <img src="\images\imgplaceholder.png" width="120" height="120">
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Uday Pratap singh
                                <small><i>@uday 5min</i></small>
                                <a href="" style="float:right; font-size:12px">Grails</a></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore et dolore magna aliqua.</p>
                            <div class="pgd">
                                <div class="soc">
                                    <a href="#" class="fa fa-facebook" style="font-size:24px"></a>
                                    <a href="#" class="fa fa-twitter" style="font-size:24px"></a>
                                    <a href="#" class="fa fa-google" style="font-size:24px"></a>
                                </div>
                                <a href="" style="float:right">View post</a>
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">
                        <div class="media media-left">
                            <img src="images/imgplaceholder.png" width="120" height="120">
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Uday Pratap singh
                                <small><i>@uday 5min</i></small>
                                <a href="" style="float:right; font-size:12px">Grails</a></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore et dolore magna aliqua.</p>
                            <div class="pgd">
                                <div class="soc">
                                    <a href="#" class="fa fa-facebook" style="font-size:24px"></a>
                                    <a href="#" class="fa fa-twitter" style="font-size:24px"></a>
                                    <a href="#" class="fa fa-google" style="font-size:24px"></a>
                                </div>
                                <a href="" style="float:right">View post</a>
                            </div>
                        </div>
                    </li>
                </ul>

                <ul class="list-group">
                    <li class="list-group-item" style="background:lightgray" ;>TOP POST</li>

                    <div class="dropdown" style="float:right;;padding:0%;margin-top:-6% ;margin-right:4%">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">TOP
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="#">1 Week</a></li>
                            <li><a href="#">1 Month</a></li>
                            <li><a href="#">1 year</a></li>
                        </ul>
                    </div>
                    <li class="list-group-item">
                        <div class="media media-left">
                            <img src="\images\imgplaceholder.png" width="120" height="120">
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Uday Pratap singh
                                <small><i>@uday 10min</i></small>
                                <a href="" style="float:right; font-size:12px">Grails</a></h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                                ut labore et dolore magna aliqua.</p>
                            <div class="pgd">
                                <div class="soc">
                                    <a href="#" class="fa fa-facebook" style="font-size:24px"></a>
                                    <a href="#" class="fa fa-twitter" style="font-size:24px"></a>
                                    <a href="#" class="fa fa-google" style="font-size:24px"></a>
                                </div>
                                <a href="" style="float:right">View post</a>
                            </div>
                        </div>
                    </li>
                </ul>

            </div>
            <div class="col-md-5">
                <%@include file="login.jsp" %>
                <%@include file="registration.jsp" %>
            </div>
        </div>
    </div>
</div>
</body>
</html>