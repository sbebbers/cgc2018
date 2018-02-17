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
    
    /**
     * Returns page header text
     * 
     * @author  Shaun B
     * @date    17 Feb 2018 13:35:03
     * @return  string
     */
    public function getHeader(){
        return $this->sql->getHeader();
    }
    
    /**
     * Gets the page sub header
     * 
     * @author  Shaun B
     * @date    17 Feb 2018 14:42:56
.    * @return  string
     */
    public function getSubHeader(){
        return $this->sql->getSubHeader();
    }
    
    /**
     * Gets the page content
     * 
     * @author  Shaun B
     * @date    17 Feb 2018 14:49:59
     * @return  array
     */
    public function getContent(){
        return json_decode($this->sql->getContent(), true);
    }
}
