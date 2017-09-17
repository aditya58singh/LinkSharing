<%@ page import="com.entities.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: dash
  Date: 7/10/2017
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.1/jquery.form.min.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% User user = (User) session.getAttribute("Userdetails");%>
<html>
<head>
    <title>Dashboard</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
      integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<body>
<%@include file="Header1.jsp" %>
<br> <br>

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
                                <p class="text-muted">@<%=user.getUserName()%>
                                </p>
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

    <%--------------------------------------------------------------------------------------------------------%>
    <!----------------------------------------------------ADD TOPIC-------------------------------------------->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#validatetopic").validate({
                rules: {
                    name: {
                        remote: '/validatetopic'
                    }
                },
                messages: {
                    name: {
                        remote: "Already exist"
//                    maxlength:$.validator.format("You have exceeded the maxlength {0}")
                    }
                }
            });


            $("#addTopic").click(function () {
                if ($("#name").val() == null || $("#name").val() == "") {
                    alert("topic name cannot be null");
                }
                else {
                    $.ajax({
                        url: "addTopic",
                        type: "post",
                        data: {
                            name: $("#name").val(),
                            visibility: $("#visibility").val()
                        },
                        success: function (Result) {

                            if (Result == "0") {
                                alert("Not Added");

                            }
                            else {
                                $("#name").val("");
                                alert("Topic Added");

                            }
                        },
                        error: function (Result) {
                            console.log(Result);
                        }

                    })
                }
            });
        });
    </script>
    <h2>Add Topic</h2>
    <form action="javascript:void(0)" id="validatetopic" method="post">
        <div class="form-group">
            <label for="name">Name*</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="TOPIC NAME" required>
        </div>
        <div class="form-group">
            <label for="visibility">Visibility*</label>
            <select style="float:left" id="visibility" name="visibility" class="form-control">
                <option class="form-control" value="Private">Private</option>
                <option class="form-control" value="Public">Public</option>
            </select>
        </div>
        <div class="panel-footer">
            <div class="checkbox">
                <button type="submit" class="btn btn-primary" style="float:right ">Cancel</button>
                <button type="submit" id="addTopic" class="btn btn-primary" style="float:right ;margin-right:40px">
                    Save
                </button>
            </div>
        </div>
    </form>
</div>

<!----------------------------------------------------------------------------->
<!----------------------------------------------------------------------------->

</body>
</html>
