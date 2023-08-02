<?php
class StartController extends BaseController
{
    private $StartModel;
    private $QuizzModel;

    public function __construct()
    {
        $this->loadModel('StartModel');
        $this->StartModel = new StartModel;
        $this->loadModel('QuizzModel');
        $this->QuizzModel = new QuizzModel;
    }

    public function index()
    {
        return $this->view('start');
    }

    public function start()
    {
        if (isset($_POST["submit"])) {
            $username = $_POST["Yourname"];
            $useremail = $_POST["Youremail"];
            $_SESSION["useremail"] = $useremail;
            $checkuser = $this->StartModel->checkUser($useremail, $username);
            if (!$checkuser) {
                $this->StartModel->saveUser($useremail, $username);
            }
            if (!isset($_SESSION["quiz"])) {
                $numbers = range(1, 77);
                shuffle($numbers);
                $randomNumbers = array_slice($numbers, 0, 10);
                $array = $this->QuizzModel->loadQuiz($randomNumbers);

                // Lưu danh sách câu hỏi vào phiên làm việc
                $_SESSION["quiz"] = $array;
            } else {
                // Lấy lại danh sách câu hỏi từ phiên làm việc
                $array = $_SESSION["quiz"];
            }
            return $this->view('quizz', ["quiz" => $array]);
        }
    }
}
