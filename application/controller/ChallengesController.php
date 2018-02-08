<?php

class ChallengesController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Gaming Competition 2018 Challenges';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Earn a crisp by entering one or more of our challenges';
    
    /**
     * @var array $content
     */
    protected $content = 'Challenges will be decided and posted here shortly.';
    
    /**
     * @var stdClass $view
     */
    public $view;
    
    public function __construct(){
        $this->view = new stdClass();
        $this->setView();
    }
    
    public function setView(){
        $this->view->header = $this->getHeader();
        $this->view->subHeader = $this->getSubHeader();
        $this->view->content = $this->getContent();
    }
    
    public function getHeader(){
        return $this->header;
    }
    
    public function getSubHeader(){
        return $this->subHeader;
    }
    
    public function getContent(){
        return $this->content;
    }
}
