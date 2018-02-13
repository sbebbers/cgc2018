<?php

class ResultsController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Results <strong class="ink-bright-red">(add this page last)</strong>';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = '<strong class="ink-bright-red">Note before deployment:</strong> The results will be the last page to make so <strong class="ink-bright-red">don\'t</strong> put this live until the results have been decided!';
    
    /**
     * @var array $content
     */
    protected $content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
    
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
