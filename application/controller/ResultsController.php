<?php

class ResultsController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Gaming Competition 2018 Results';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Note to developer: the results will be the last page to make so don\'t put any content here yet.';
    
    /**
     * @var array $content
     */
    protected $content = 'Placeholder text.';
    
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
