<?php
class BaseController
{
    const VIEW_FODER_NAME = 'View';
    const MODEL_FODER_NAME = 'Model';

    protected function view($viewPath)
    {
        return require_once(self::VIEW_FODER_NAME . '/' . $viewPath . '.php');
    }

    protected function loadModel($modelPath)
    {
        return require_once(self::MODEL_FODER_NAME . '/' . $modelPath . '.php');
    }
}
