<?php

class EntriesController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Entries';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'And our latest entries are...';
    
    /**
     * @var array $content
     */
    protected $content = 'Entries will appear here shortly';
    
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
