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
        return $this->view('end');
    }
}
