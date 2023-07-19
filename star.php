<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
  <link rel="stylesheet" href="style.css">
  <script src="index.js"></script>
  <title>STS Test</title>
</head>

<body>
<!-- Header -->
<?php include 'header.php'?>
<!-- Body -->
<div class="body">
    <form>
    <div class="input-group">
        <span class="input-group-text">Username</span>
        <input type="text" class="form-control" placeholder="Username">
    </div>

    <div class="input-group">
    <span class="input-group-text">Email</span>
        <input type="text" class="form-control" placeholder="Your Email">
    </div>
    </form>
    <!-- Đoạn mã HTML -->
    <button type="button" class="btn btn-primary" onclick="redirectToQuiz()">Làm bài ngay</button>

    <!-- Đoạn mã JavaScript -->
    <script>
    function redirectToQuiz() {
    // Sử dụng window.location.href để chuyển hướng sang trang "quizz.php"
    window.location.href = "quizz.php";
    }
    </script>

</div>

<div id="body"></div>
<!-- Footer -->
<?php include 'footer.php'?>
  <script src="index.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>