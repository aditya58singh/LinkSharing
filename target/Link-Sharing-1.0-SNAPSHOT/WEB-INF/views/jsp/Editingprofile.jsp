<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: dash
  Date: 7/21/2017
  Time: 9:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Editing Profile</title>
</head>
<body>
<%@include file="Header1.jsp" %>
<!----------------------------------------------------------------------------------------------------->
<!---------------------------------------Page Content------------------------------------------------->
<div class="container">
    <div class="row">
        <div class="container-fluid col-md-4 pull-left">
            <div class="panel panel-default">
                <div class="panel-body">

                    <div class="row">
                        <div class="col-sm-4">
                            <img class="img-thumbnail img-responsive"
                                 src="<c:url value="/getPhoto"/>" height=130px
                                 width=100px>
                        </div>
                        <div class="col-sm-8">
                            <div class="row">
                                <span><h4>${Userdetails.firstName}</h4></span>
                            </div>
                            <div class="row">
                                <p class="text-muted">@${Userdetails.userName}</p>
                            </div>
                            <div class="row">
                                <span class="col-sm-6 text-muted pull-left">Subscriptions</span>
                                <span class="col-sm-6 text-muted pull-left">Topics</span>
                            </div>
                            <div class="row">
                                <span class="col-sm-6 pull-left"><a href="#">50</a></span>
                                <span class="col-sm-6 pull-left"><a href="#">20</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--------------------------------------------------------------------------------------------------->
<!--------------------------------------PROFILE UPDATE---------------------------------------------->
<style></style>
<div class="col-lg-6">
    <div class="wrapper">
        <form action="/updateprofile" class="form-signin" method="post" enctype="multipart/form-data">
            <h2 class="form-signin-heading">Profile Update</h2>
            First name <input type="text" class="form-control" name="firstName" placeholder="Email Address"
                              value="${Userdetails.firstName}"/>

            Last Name <input type="text" class="form-control" name="lastName" placeholder="Email Address"
                             value="${Userdetails.lastName}"/>

            User name <input type="text" class="form-control" name="userName" placeholder="Email Address"
                             value="${Userdetails.userName}"/>

            <span class="input-group-btn">
                <span class="btn btn-default btn-file">
                    Browse… <input type="file" id="file" name="file">
                </span>
            </span>

            <button  class="btn btn-lg btn-primary btn-block" type="submit">Profile Update</button>
        </form>
    </div>
</div>

<!--------------------------------------------------------------------------------------------------->
<!--------------------------------------UPDATE PASSWORD---------------------------------------------->

<div class="col-lg-6">
    <div class="wrapper">
        <form action="/updatepassword" class="form-signin" method="post">
            <h2 class="form-signin-heading">Password Update</h2>
            Password <input type="password" class="form-control" name="password" placeholder="Password"/>
            Confirm Password <input type="password" class="form-control" name="confirmpassword" placeholder="Confirm password"/>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Update Password</button>
        </form>
    </div>
</div>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#passwordvalidate").validate({
            rules: {
                password: {
                    required: true,
                    minlength: 5
                },
                confirmpassword: {
                    required: true,
                    equalTo: "#password"
                }
            },
            messages: {
               confirmpassword: {
                    required: "You Forgot to confirm your password",
                    equalTo: "Password Not match"
                }
            }
        });
    });
</script>


</body>
</html>
