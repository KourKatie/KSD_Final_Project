<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOMEPAGE</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">



</head>
<body>


<h1 align = "center">MOGO BUDDY</h1>

<h2>About Us</h2>


<p class="aboutus">
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
    dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
    non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
</p>

<div class="btn-group">
    <div class="container">
        <!-- Trigger the modal with a button -->
        <button type="button" class="btn btn-default btn-lg" id = "myBtn" data-toggle="modal" data-target="#myModal">Login</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">


                <!-- Modal Content -->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss = "modal">&times;</button>
                        <h4 style = "color:red;"><span class="glyphicon glyphicon-lock"></span> Login </h4>
                    </div>


                    <div class="modal-body">

                        <!--UserName-->
                        <form role = "form">
                            <div class="form-group">
                                <label for = "usrname"><span class="glyphicon glyphicon-user"></span> Username </label>
                                <input type="text" class="form-control" id = "usrname" placeholder="Enter E-Mail">
                            </div>

                            <!-- Password -->
                            <div class="form-group">
                                <label for = "logpass"><span class="glyphicon glyphicon-eye-open"></span> Password </label>
                                <input type="text" class="form-control" id="logpass" placeholder="Enter Password">
                            </div>

                            <!--Remember Me -->
                            <div class="checkbox">
                                <label><input type="checkbox" value=""checked>Remember Me </label></div>
                            <button type="submit" class="btn btn-default btn-success btn-block">
                                <span class="glyphicon glyphicon-off"></span> Login </button>
                        </form>
                    </div>

                    <!--FOOTER -->
                    <div class="modal-footer">

                        <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss = "modal">
                            <span class="glyphicon glyphicon-remove"></span> Cancel</button>
                        <p>Not a member? <a href="#">Sign Up</a> </p>
                        <p>Forgot <a href="#">Password?</a> </p>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <!-- SIGN UP BUTTON -->

    <div class="container">
        <button type="button" class="btn btn-default btn-lg" id="Btn" data-toggle = "modal" data-target ="#accntModal">
            Sign Up</button>


        <!-- Modal -->
        <div class="modal fade" id="accntModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal Content -->
                <div class="modal-content">
                    <div class="modal-header"><button type="button" class="close" data-dismiss = "modal">&times;</button>
                        <h4 style="color:red;">Sign Up</h4>
                    </div>

                    <div class="modal-body">
                        <form role="form">
                            <div class="form-group">
                                <!-- First Name -->
                                <label for="firstName">First Name</label>
                                <input type="text" class="form-control" id="firstName" placeholder="Enter First Name">
                            </div>

                            <div class="form-group">
                                <label for ="lastName">Last Name</label>
                                <input type="text" class="form-control" id="lastName" placeholder="Enter Last Name">
                            </div>

                            <div class="form-group">
                                <label for="email"> <span class="glyphicons glyphicons-envelope"></span> E-Mail </label>
                                <input type="text" class="form-control" id="email" placeholder="Enter E-Mail">
                            </div>

                            <div class="form-group">
                                <label for="phoneNumber"><span class="glyphicons glyphicons-iphone"></span>Phone Number </label>
                                <input type="text" class="form-control" id="phoneNumber" placeholder="Enter Phone Number">
                            </div>

                            <div class="form-group">
                                <label for="company"><span class="glyphicons glyphicons-building"></span>Company</label>
                                <input type="text" class="form-control" id="company" placeholder="Enter Company"></div>


                            <div class="form-group">
                                <label for="password"><span class="glyphicons glyphicons-eye-open"></span>Password </label>
                                <input type="text" class="form-control" id="password" placeholder="Enter Password"></div>

                            <div class="form-group">
                                <label for="rptpsswrd"><span class="glyphicons glyphicons-eye-open"></span>Confirm Password </label>
                                <input type="text" class="form-control" id="rptpsswrd" placeholder="Confirm Password"></div>

                            <!--Remember Me -->
                            <div class="checkbox">
                                <label><input type="checkbox" value=""checked>Remember Me </label></div>

                            Please Upload A Picture:
                            <input type="file" name="pic" accept="image/*">

                            <button type="submit" class="btn btn-default btn-success btn-block">
                                <span class="glyphicon glyphicon-off"></span> Sign Up</button>


                        </form>
                    </div>

                    <!--FOOTER -->
                    <div class="modal-footer">

                        <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss = "modal">
                            <span class="glyphicon glyphicon-remove"></span> Cancel</button>
                        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                    </div>
                </div>
            </div>

        </div> <!--div class btn group -->

        <!--Bootstrap Links -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</body>
</html>
