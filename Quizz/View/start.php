<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="../../Quizz/Css/start.css">
    <title>STS Test</title>
</head>

<body>
    <!-- Header -->
    <?php include 'header.php' ?>
    <!-- Body -->
    <div class="container body-content">
        <div class="col-md-12">
            <form action="?controller=start&action=start" method="post">
                <div class="login-panel">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-md-12 text-center login-form-logo">
                                <img class="login-logo" src="https://identity.saigontechnology.vn/LoginTemplate/image/STS_Logo_white.svg">
                            </div>
                            <div class="d-flex justify-content-center">
                                <p class="">Enter your name and your email to start the quiz!</p>
                            </div>
                            <div class="col-md-12 login-form">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input required="" placeholder="Your Name" autofocus="" type="text" class="form-control input" maxlength="100" data-val="true" data-val-required="The Yourname field is required." id="Yourname" name="Yourname" value="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input class="form-control input" placeholder="Your Email" type="email" autocomplete="off" data-val="true" data-val-required="The Email field is required." id="Email" name="Youremail">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-login form-control" name="submit" value="Start">Start</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <?php include 'footer.php' ?>
    <script src="index.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>