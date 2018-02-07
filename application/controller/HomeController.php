<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\HomeModel;

require_once(serverPath("/model/read/HomeModel.php"));

class HomeController extends ControllerCore
{
    public function __construct(){
        ControllerCore::__construct();
        
        $this->sql  = new HomeModel();
        foreach($this->sql->getView() as $key => $data){
            $key    = $this->lib->convertSnakeCase($key);
            $this->view->{$key} = htmlspecialchars_decode($data);
        }
        $this->setFlashMessage('message', "Made you look :-P");
    }
}
