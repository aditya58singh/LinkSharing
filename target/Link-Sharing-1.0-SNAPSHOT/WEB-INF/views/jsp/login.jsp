<form action="/login" method="post">

    <ul class="list-group">
        <li class="list-group-item" style="background:lightgray";>Login</li>
        <li class="list-group-item">
          <p style="color: red; font-size: 18px"> ${message}</p>
            <div class="form-group">
                <label class="control-label col-md-3 ">UserName</label>
                <div class="input-group col-md-7">
                    <input name="userName" class="form-control" type="text">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-3">Password</label>
                <div class="input-group col-md-7">
                    <input name="password" class="form-control" type="password">
                </div>
            </div>

            <div class="form-group">
                <a href="/forgotpassword" >Forgot password</a>
                <button type="submit" class="btn btn-primary" style="float:right">Submit</button>
            </div>
        </li>
    </ul>
</form>