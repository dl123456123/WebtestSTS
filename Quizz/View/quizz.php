<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="../Css/style.css">
    <title>STS Test</title>
</head>

<body>
    <?php include 'header.php' ?>
    <div id="page" data-region="mainpage" data-usertour="scroller" class="drawers   drag-container">

        <div id="topofscroll" class="main-inner">

            <div role="main">
                <div id="quiz-timer-wrapper" class="mb-2" style="display: flex;">
                    <div id="quiz-timer" class="quiz-timer-inner py-1 px-2 ml-auto" aria-atomic="true" aria-relevant="text">
                        Thời gian còn lại
                        <span id="quiz-time-left"></span>
                    </div>
                </div>
                <form action="end.php" method="post" enctype="multipart/form-data" accept-charset="utf-8" id="responseform" autocomplete="off">
                    <div id="quizz">
                        <div id="questions_1" class="que multichoice deferredfeedback notyetanswered">
                            <div class="info">
                                <h3 class="no">Câu hỏi <span class="qno">1</span></h3>
                                <div class="state">Chưa được trả lời</div>
                                <div class="grade">Chấm điểm của 1,00</div>

                            </div>
                            <div class="content" id="yui_3_17_2_1_1690352235539_187">
                                <div class="formulation clearfix" id="yui_3_17_2_1_1690352235539_186">
                                    <div class="qtext">
                                        <p id="quest">Các thẻ (tag) nào được dùng để mô tả một danh
                                            sách không thứ tự (danh sách với bullets)<br></p>
                                    </div>
                                    <div class="ablock no-overflow visual-scroll-x">
                                        <div class="prompt">Chọn một:</div>
                                        <div class="answer">
                                            <div class="r0"><input type="radio" name="" value="0" id="" aria-labelledby="label">
                                                <div class="d-flex w-auto" id="label" data-region="answer-label"><span class="answernumber">a. </span>
                                                    <div class="flex-fill ml-1">
                                                        <p>Tất cả đều sai<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="r1"><input type="radio" name="" value="" id="" aria-labelledby="label">
                                                <div class="d-flex w-auto" id="label" data-region="answer-label"><span class="answernumber">b. </span>
                                                    <div class="flex-fill ml-1">
                                                        <p>ol và li<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="r0"><input type="radio" name="" value="" id="" aria-labelledby="_label">
                                                <div class="d-flex w-auto" id="_label" data-region="answer-label"><span class="answernumber">c. </span>
                                                    <div class="flex-fill ml-1">
                                                        <p>ul và ol<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="r1"><input type="radio" name="q1204839:8_answer" value="3" id="q1204839:8_answer3" aria-labelledby="q1204839:8_answer3_label">
                                                <div class="d-flex w-auto" id="q1204839:8_answer3_label" data-region="answer-label"><span class="answernumber">d. </span>
                                                    <div class="flex-fill ml-1">
                                                        <p>ul và li<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="q1204839:8_clearchoice" class="qtype_multichoice_clearchoice sr-only" aria-hidden="true"><input type="radio" name="q1204839:8_answer" id="q1204839:8_answer-1" value="-1" class="sr-only" aria-hidden="true" checked="checked"><label for="q1204839:8_answer-1"><a tabindex="-1" role="button" class="btn btn-link ml-3 mt-n1 mb-n1" href="#">Clear
                                                    my
                                                    choice</a></label></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="questions_2" class="que multichoice deferredfeedback notyetanswered">
                            <div class="info">
                                <h3 class="no">Câu hỏi <span class="qno">1</span></h3>
                                <div class="state">Chưa được trả lời</div>
                                <div class="grade">Chấm điểm của 1,00</div>

                            </div>
                            <div class="content" id="yui_3_17_2_1_1690352235539_187">
                                <div class="formulation clearfix" id="yui_3_17_2_1_1690352235539_186">
                                    <div class="qtext">
                                        <p id="quest">Các thẻ (tag) nào được dùng để mô tả một danh
                                            sách không thứ tự (danh sách với bullets)<br></p>
                                    </div>
                                    <div class="ablock no-overflow visual-scroll-x">
                                        <div class="prompt">Chọn một:</div>
                                        <div class="answer">
                                            <div class="r0"><input type="radio" name="" value="0" id="" aria-labelledby="label">
                                                <div class="d-flex w-auto" id="label" data-region="answer-label"><span class="answernumber">a. </span>
                                                    <div class="flex-fill ml-1">
                                                        <p>Tất cả đều sai<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="r1"><input type="radio" name="" value="" id="" aria-labelledby="label">
                                                <div class="d-flex w-auto" id="label" data-region="answer-label"><span class="answernumber">b. </span>
                                                    <div class="flex-fill ml-1">
                                                        <p>ol và li<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="r0"><input type="radio" name="" value="" id="" aria-labelledby="_label">
                                                <div class="d-flex w-auto" id="_label" data-region="answer-label"><span class="answernumber">c. </span>
                                                    <div class="flex-fill ml-1">
                                                        <p>ul và ol<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="r1"><input type="radio" name="q1204839:8_answer" value="3" id="q1204839:8_answer3" aria-labelledby="q1204839:8_answer3_label">
                                                <div class="d-flex w-auto" id="q1204839:8_answer3_label" data-region="answer-label"><span class="answernumber">d. </span>
                                                    <div class="flex-fill ml-1">
                                                        <p>ul và li<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="submitbtns">
                            <input type="submit" name="end" value="Nộp bài" class="mod_quiz-next-nav btn btn-primary" id="mod_quiz-next-nav">
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
    <?php include 'footer.php' ?>

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