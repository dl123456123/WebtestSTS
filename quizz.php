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
  <?php include 'header.php' ?>

  <div id="body">
    <div role="main">
      <div id="quiz-timer-wrapper" class="mb-2">
        <div id="quiz-timer" class="quiz-timer-inner py-1 px-2 ml-auto" role="timer" aria-atomic="true" aria-relevant="text">
          Thời gian còn lại
          <span id="quiz-time-left"></span>
        </div>
      </div>
      <form action="" method="post" enctype="multipart/form-data" accept-charset="utf-8" id="responseform">
        <div id="question" class="que multichoice deferredfeedback notyetanswered d-flex">
          <div class="info">
            <h3 class="no">Câu hỏi <span class="qno">1</span></h3>
            <div class="state">Chưa được trả lời</div>
            <div class="grade">Chấm điểm của 2,00</div>
            <div class="questionflag editable">
              <input type="hidden" name="q1198570:1_:flagged" value="0" />
              <input type="checkbox" id="q1198570:1_:flaggedcheckbox" name="q1198570:1_:flagged" value="1" />
              <label id="q1198570:1_:flaggedlabel" for="q1198570:1_:flaggedcheckbox">
                <img src="https://e-learning.hcmut.edu.vn/theme/image.php/boost/core/1685588876/i/unflagged" alt="" class="questionflagimage" id="q1198570:1_:flaggedimg" />
                <span>Cờ câu hỏi</span>
              </label>
            </div>
          </div>
          <div class="content">
            <div class="formulation clearfix">
              <input type="hidden" name="q1198570:1_:sequencecheck" value="1" />
              <div class="qtext">
                <span>
                  Tấn công DOS (Denial of Service) thuộc loại tấn công nào trong kiến trúc an ninh OSI
                  ?
                </span>
              </div>
              <div class="ablock no-overflow visual-scroll-x">
                <div class="prompt">Chọn một:</div>
                <div class="answer">
                  <div class="answer">
                    <div class="d-flex r0">
                      <input type="radio" name="answer" value="0" id="answer0" aria-labelledby="answer0_label" />
                      <div class="d-flex w-auto" id="answer0_label" data-region="answer-label">
                        <span class="answernumber"> a. </span>
                        <div class="flex-fill ml-1">
                          Tấn công từ xa (Remote Attack)
                        </div>
                      </div>
                    </div>
                    <div class="d-flex r1">
                      <input type="radio" name="answer" value="1" id="answer1" aria-labelledby="answer1_label" />
                      <div class="d-flex w-auto" id="answer1_label" data-region="answer-label">
                        <span class="answernumber"> b. </span>
                        <div class="flex-fill ml-1">
                          Các câu trả lời đều đúng
                        </div>
                      </div>
                    </div>
                    <div class="d-flex r0">
                      <input type="radio" name="answer" value="2" id="answer2" aria-labelledby="answer2_label" />
                      <div class="d-flex w-auto" id="answer2_label" data-region="answer-label">
                        <span class="answernumber">c. </span>
                        <div class="flex-fill ml-1">
                          <span>
                            Tấn công chủ động (Active Attack)
                          </span>
                        </div>
                      </div>
                    </div>
                    <div class="d-flex r1">
                      <input type="radio" name="answer" value="3" id="answer3" aria-labelledby="answer3_label" />
                      <div class="d-flex w-auto" id="answer3_label" data-region="answer-label">
                        <span class="answernumber">d. </span>
                        <div class="flex-fill ml-1">
                          <span>
                            <span>
                              Tấn công thụ động (Passive Attack)
                            </span>
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="submitbtns" style="text-align: center;">
          <input type="submit" name="submit" value="Submit" class="mod_quiz-next-nav btn btn-primary" id="mod_quiz-next-nav" />
          
        </div>
        <input type="hidden" name="timeup" value="0" id="timeup" />
      </form>
    </div>
  </div>
  <?php include 'footer.php' ?>
  <script src="index.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>