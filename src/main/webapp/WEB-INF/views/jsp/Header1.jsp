<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!------------------------------------------------------------------------------------------->
<!---------------------------------------HEADER---------------------------------------------------->

<div class="container-fluid">
    <nav class="navbar navbar-default">

        <div class="navbar-header">
            <a class="navbar-brand" href="/"> Link Sharing </a>
        </div>
        <ul class="nav navbar-nav pull-right">
            <li><a href="#" data-toggle="modal" data-target="myTopic">
                <span class="glyphicon glyphicon-comment" style="font-size: 20px"></span></a></li>
            <li><a href="#" data-toggle="modal" data-target="#">
                <span class="glyphicon glyphicon-envelope" style="font-size: 20px"></span></a></li>
            <li><a href="#" data-toggle="modal" data-target="#">
                <span class="glyphicon glyphicon-link" style="font-size: 20px"></span></a></li>
            <li><a href="#" data-toggle="modal" data-target="#">
                <span class="glyphicon glyphicon-book" style="font-size: 20px"></span></a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                    aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"
                                                                                     style="font-size: 20px">${Userdetails.userName}</span>
                <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="/editing">Profile</a></li>
                    <c:if test="${Userdetails.admin==true}">
                    <li><a href="#">Users</a></li>
                    <li><a href="#">Topics</a></li>
                    <li><a href="#">Posts</a></li>
                        <li><a href="/admin">Admin</a> </li>
                    </c:if>
                    <li><a href="/logout">Logout</a></li>
                </ul>
            </li>
        </ul>
        <form class="navbar-form pull-right" id="search_form" role="search"
              action="">
            <div class="form-group has-feedback has-feeback-left">
                <input type="text" class="form-control" id="search_box"
                       placeholder="search" name="search">
                <button type="submit" id="search_button" class="glyphicon glyphicon-search form-control-feedback">
                </button>
            </div>
        </form>
    </nav>
</div>
