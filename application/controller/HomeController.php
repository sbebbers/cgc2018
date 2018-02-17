<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\HomeModel;

require_once(serverPath("/model/read/HomeModel.php"));

class HomeController extends ControllerCore
{
    public function __construct(){
        ControllerCore::__construct();
        $this->sql = new HomeModel();
        $this->setView();
        if(empty($this->view->hrClasses)){
            $this->view->hrClasses = $this->getHRClasses();
        }
    }
    
    /**
     * Sets the page view objects
     * 
     * @author  Shaun B
     * @date    2018-02-17 10:17:42
     * @return  void
     */
    public function setView(){
        $this->view->header     = $this->getHeader();
        $this->view->subHeader  = $this->getSubHeader();
        $this->view->content    = $this->getContent();
    }
    
    public function getHeader(){
        return $this->sql->getHeader();
    }
    
    public function getSubHeader(){
        return $this->sql->getSubHeader();
    }
    
    public function getContent(){
        return json_decode($this->sql->getContent('content'), true);
    }
}
