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
            $checkuser = $this->StartModel->checkUser($useremail, $username);
            if (!$checkuser) {
                $_SESSION["useremail"] = $useremail;
                $this->StartModel->saveUser($useremail, $username);
            }
            $numbers = range(1, 77);
            shuffle($numbers);
            $randomNumbers = array_slice($numbers, 0, 10);
            $array = $this->QuizzModel->loadQuiz($randomNumbers);
            return $this->view('quizz', ["quiz" => $array]);
        }
    }
}
