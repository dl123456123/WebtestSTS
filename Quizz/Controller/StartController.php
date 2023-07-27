<?php
class StartController extends BaseController
{
    private $StartModel;

    // public function __construct()
    // {
    //     $this->loadModel('StartModel');
    //     $this->StartModel = new StartModel;
    // }

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
            // $this->StartModel->saveUser($useremail, $username);
            return $this->view('quizz');
        }
    }
}