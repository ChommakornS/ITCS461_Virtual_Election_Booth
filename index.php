<?php
    require_once 'environnements/dev.php';
    include('head.php');
?>

<body>
    <div class="small_size">
        
    </div>
    <div class="container">
        <div class="row">
            <!-- <center> <img src="./images/DQOL.png" alt="" width="80px" style="margin-top:10px;" /></center> -->
            <center><br><br></center>
            <center>
                <h3 style="margin-bottom:-40px;"> <?php echo APP_NAME_USER ?> </h3>
            </center>
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default" style="border: 1px solid rgb(33,198,104);">

                    <div class="panel-heading" style="background: linear-gradient(90deg, rgba(33, 198, 104, 1) 0%, rgba(16, 135, 100, 1) 100%);	color:white;">
                        <center>
                            <h3 class="panel-title"> Identification </h3>
                        </center>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post" enctype="multipart/form-data">
                            <fieldset>

                                <div class="form-group">
                                    <label for="username">ID number</label>
                                    <input class="form-control" placeholder="Please Enter Voter's ID Number" name="idno" type="text" required="required" autofocus>
                                </div>

                                <div class="form-group">
                                    <label for="username">Password</label>
                                    <input class="form-control" placeholder="Password" name="password" type="password" required="required">
                                </div>

                                <button class="loginButton" name="login">
                                    Login
                                </button>
                                <p style="margin-top: 10px;">Don't have an account yet? <a href="/vote/register/index.php" style="text-decoration: underline; color: green;">Sign Up</a>.</p>
                            </fieldset>

                            <?php include('login_query.php'); ?>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php include('scripts/script.php'); ?>
</body>

</html>