<?php
session_start();
require './Database/Connection.php';
require './Controller/BaseController.php';
require './Model/BaseModel.php';

$controllerName = ucfirst(strtolower($_REQUEST['controller'] ?? 'start') . 'Controller');
$actionName = strtolower($_REQUEST['action'] ?? 'index');
require "./Controller/${controllerName}.php";

$controllerObject = new $controllerName;
$controllerObject->$actionName();
