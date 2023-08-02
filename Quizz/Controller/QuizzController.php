<?php
class QuizzController extends BaseController
{
    private $QuizzModel;
    public function __construct()
    {
        $this->loadModel('QuizzModel');
        $this->QuizzModel = new QuizzModel;
    }

    public function submit()
    {
        session_destroy();
        return $this->view('end');
    }
}
