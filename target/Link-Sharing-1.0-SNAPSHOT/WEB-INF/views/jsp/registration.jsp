<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#validateform").validate({
            rules: {
                email: {
                    required: true,
                    email: true,
                    remote:'/validatemail'

                },
                userName: {
                    required: true,
                    minlength: 3,
                    maxlength: 15,
                    remote:'/validate'
                },
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
                email:{
                    remote:"Already Exist"
                },
                userName: {
                    required: "Dont Forget your Username",
                    minlength: "You minlength is not right",
                    remote: "Already exist"
//                    maxlength:$.validator.format("You have exceeded the maxlength {0}")
                },
                confirmpassword: {
                    required: "You Forgot to confirm your password",
                    equalTo: "Password Not match"
                }
            }
        });
    });
</script>

<ul class="list-group">
    <li class="list-group-item" style="background:lightgray">Register</li>
    <li class="list-group-item">
        <form class="form-horizontal" id="validateform" role="form" action="/register" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="firstName" class="col-sm-3 control-label">First Name</label>
                <div class="col-sm-9">

                    <input type="text" name="firstName" id="firstName" placeholder="Smit"
                           class="form-control" autofocus>
                    <span class="help-block">First Name eg.: Smith, Harry</span>
                </div>
            </div>
            <div class="form-group">
                <label for="lastName" class="col-sm-3 control-label">Last Name</label>
                <div class="col-sm-9">
                    <input type="text" id="lastname" name="lastName" placeholder="Smit"
                           class="form-control" autofocus>
                    <span class="help-block">Last Name, : XYZ, ABC</span>
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email</label>
                <div class="col-sm-9">
                    <input type="text" name="email" id="email" placeholder="Email" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="username" class="col-sm-3 control-label">Username*</label>
                <div class="col-sm-9">
                    <input type="text" maxlength="15" id="userName" name="userName"
                           placeholder="username" class="form-control">
                </div>
            </div>

            <div class="form-group">
                <label for="password" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-9">
                    <input type="password" name="password" id="password" placeholder="password"
                           class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="confirmpassword" class="col-sm-3 control-label">Confirm Password*</label>
                <div class="col-sm-9">
                    <input type="password" id="confirmpassword" placeholder="Password"
                           name="confirmpassword"
                           class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">Photo*</label>
                <div class=" col-md-9 ">
                    <label class="control-label">Select File</label>
                    <input id="input-1"  accept="image/*" type="file" name="file" class="file">

                </div>
            </div>


            <div class="form-group ">
                <div class="col-sm-3 col-sm-offset-3 ">
                    <input type="submit" value="Register" id="register"
                           class="btn btn-primary btn-block "/>
                </div>
            </div>
        </form>


    </li>
</ul>

