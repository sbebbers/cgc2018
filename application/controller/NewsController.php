<?php

class NewsController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Gaming Competition 2018 News';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'First. For. News.';
    
    /**
     * @var array $content
     */
    protected $content = '<strong>The guy who</strong> <strike>once</strike> <strong>wrote</strong> <strike>a small and insignificant amount of content</strike> <strong>for</strong> <strike>the</strike> <strong>Your Sinclair</strong> <strike>tribute issue that was free with Retro Gamer</strike> <strong>magazine</strong> has launched THIS CRAP GAMING COMPETITION. Want to make some software for your favourite Sinclair 8 bit (or compatible clone)? DO YOUR WORST!!!!!1one';
    
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
