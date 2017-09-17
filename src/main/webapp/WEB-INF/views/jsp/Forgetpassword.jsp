<%--
  Created by IntelliJ IDEA.
  User: dash
  Date: 7/14/2017
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<%--
  Created by IntelliJ IDEA.
  User: dash
  Date: 7/14/2017
  Time: 3:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<%@include file="Header1.jsp" %>


<div class="col-md-12">
    <div class="col-md-5">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="text-center">
                    <h3><i class="fa fa-lock fa-4x"></i></h3>
                    <h2 class="text-center">Forgot Password?</h2>
                    <p>Please provide us your Email Address. We are here to help you</p>
                    <div class="panel-body">

                        <form id="emailform" action="/sendOTP" role="form" autocomplete="off" class="form"
                              method="post">

                            <div class="form-group">
                                <div class="input-group">
                                        <span class="input-group-addon"><i
                                                class="glyphicon glyphicon-envelope color-blue"></i></span>
                                    <input id="email_id" name="email_name" placeholder="email address"
                                           class="form-control"
                                           type="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <input id="#sendOTP" name="recover-submit" class="btn btn-lg btn-primary btn-block"
                                       value="Send OTP" form="emailform" type="submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="col-md-7">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="text-center">
                    <h3><i class="fa fa-unlock fa-4x"></i></h3>
                    <h2 class="text-center">Update Password</h2>
                    <p>You can reset your password here.</p>
                    <div class="panel-body">
                        <form id="passwordEntryform" role="form" action="/forgotpasswordform"
                              method="post">
                            <div class="form-group">
                                <div class="input-group">
                                        <span class="input-group-addon">
                                    <label>Email</label>
                                        </span>
                                    <input type="email" name="email"
                                           placeholder="Enter email" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                        <span class="input-group-addon">
                                            <label>OTP</label></span>
                                    <input type="text" name="otp" class="form-control" placeholder="Enter otp">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                        <span class="input-group-addon">
                                            <label>Password</label></span>
                                    <input type="password" name="password"
                                           placeholder="Enter password" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                        <span class="input-group-addon">
                                            <label>Confirm password</label></span>
                                    <input type="password" name="confirm_password" id="confirm_password"
                                           placeholder="Enter password again" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" form="passwordEntryform"
                                       class="btn btn-lg btn-primary btn-block">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>


