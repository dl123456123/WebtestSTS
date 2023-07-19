if (localStorage.getItem('countDownDate')) {
    // Khôi phục countDownDate từ localStorage
    countDownDate = new Date(localStorage.getItem('countDownDate'));
  } else {
    // Nếu countDownDate chưa được lưu trữ, thiết lập giá trị mới
    countDownDate = new Date();
    countDownDate.setMinutes(countDownDate.getMinutes() + 10);
  }
// Update the count down every 1 second
var x = setInterval(function () {
  // Get today's date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for minutes and seconds
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("quiz-time-left").innerHTML =
    minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("quiz-time-left").innerHTML = "EXPIRED";
    document.getElementById("responseform").submit();
  }
  localStorage.setItem('countDownDate', countDownDate);
}, 1000);

