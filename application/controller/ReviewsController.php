<?php

class ReviewsController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Gaming Competition 2018 Reviews';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Here you will find the latest reviews of the very best entries';
    
    /**
     * @var array $content
     */
    protected $content = 'Reviews will be here shortly.';
    
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
