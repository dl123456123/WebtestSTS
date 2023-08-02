<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="../../Quizz/Css/style.css?v=<?php echo time(); ?>">
    <title>STS Test</title>
</head>

<body>
    <?php include_once 'header.php' ?>
    <div id="page" data-region="mainpage" data-usertour="scroller" class="drawers   drag-container">

        <div id="topofscroll" class="main-inner">

            <div role="main">
                <div id="quiz-timer-wrapper" class="mb-2" style="display: flex;">
                    <div id="quiz-timer" class="quiz-timer-inner py-1 px-2 ml-auto" aria-atomic="true" aria-relevant="text">
                        Thời gian còn lại
                        <span id="quiz-time-left"></span>
                    </div>
                </div>
                <form action="?controller=quizz&action=submit" method="post" enctype="multipart/form-data" accept-charset="utf-8" id="responseform" autocomplete="off">
                    <div id="quizz">
                        <?php
                        if (!empty($data)) {
                            $i = 1;
                            foreach ($data as $key => $value) {
                                foreach ($value as $quiz => $options) {
                        ?>

                                    <div id="questions_<?= $i ?>" class="que multichoice deferredfeedback notyetanswered">
                                        <div class="info">
                                            <h3 class="no">Câu hỏi <span class="qno"><?= $i ?></span></h3>
                                            <div class="state">Chưa được trả lời</div>
                                            <div class="grade">Chấm điểm của 1,00</div>
                                        </div>
                                        <div class="content">
                                            <div class="formulation clearfix">
                                                <div class="qtext">
                                                    <p id="quest"><?= $quiz ?><br></p>
                                                </div>
                                                <div class="ablock no-overflow visual-scroll-x">
                                                    <div class="prompt">Chọn một:</div>
                                                    <div class="answer">
                                                        <?php
                                                        $length = count($options);
                                                        for ($j = 0; $j < $length; $j++) {
                                                        ?>
                                                            <div class="r0"><input type="radio" name="" value="0" id="" aria-labelledby="label">
                                                                <div class="d-flex w-auto" id="label" data-region="answer-label"><span class="answernumber"></span>
                                                                    <div class="flex-fill ml-1">
                                                                        <p><?= $options[$j] ?><br></p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        <?php } ?>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <?php $i += 1;
                                } ?>
                                    </div>

                            <?php
                            }
                        } ?>
                            <div class="submitbtns">
                                <input type="submit" name="end" value="Nộp bài" class="mod_quiz-next-nav btn btn-primary" id="mod_quiz-next-nav">
                            </div>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <!-- <?php include_once 'footer.php' ?> -->

    <script>
        // Đặt thời gian ban đầu là 10 phút (10 phút = 600 giây)
        var remainingTime = 300;

        // Hàm cập nhật đếm ngược
        function updateCountdown() {
            const minutes = Math.floor(remainingTime / 60);
            const seconds = remainingTime % 60;

            // Hiển thị đếm ngược trong thẻ có id="quiz-time-left"
            document.getElementById("quiz-time-left").textContent =
                `${minutes < 10 ? "0" : ""}${minutes}:${seconds < 10 ? "0" : ""}${seconds}`;

            // Giảm thời gian còn lại mỗi giây
            remainingTime--;

            if (remainingTime < 10) {
                document.getElementById("quiz-timer").style.backgroundColor = "#FF0000";
            } else {
                document.getElementById("quiz-timer").style.backgroundColor = "#fff";
            }

            // Kiểm tra nếu thời gian còn lại đã hết thì dừng đếm ngược
            if (remainingTime < 0) {
                clearInterval(countdownInterval);
                document.getElementById("quiz-time-left").textContent = "Hết giờ!";
                submitForm(); // Gọi hàm submitForm() khi hết giờ
                return;
            }

            localStorage.setItem("remainingTime", `${minutes}:${seconds}`);
        }

        // Cập nhật đếm ngược mỗi giây
        const countdownInterval = setInterval(updateCountdown, 1000);

        // Hàm gọi để khôi phục thời gian từ Local Storage sau khi tải lại trang
        function restoreCountdown() {
            let storedTime = localStorage.getItem("remainingTime");

            if (storedTime) {
                document.getElementById("quiz-time-left").textContent = storedTime;
                let timeArray = storedTime.split(":");
                let minutes = parseInt(timeArray[0]);
                let seconds = parseInt(timeArray[1]);
                remainingTime = (minutes * 60) + seconds - 1;
            }
        }

        // Gọi hàm khôi phục khi tải lại trang
        window.onload = restoreCountdown;

        function submitForm() {
            // Tìm form và gửi
            const form = document.getElementById("mod_quiz-next-nav");
            if (form) {
                localStorage.removeItem("remainingTime");
                form.click();
            }
        }

        document.getElementById("mod_quiz-next-nav").addEventListener("click", function onFormSubmit(event) {
            localStorage.removeItem("remainingTime");
        });
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>