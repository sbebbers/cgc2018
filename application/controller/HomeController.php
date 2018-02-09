<?php
use Application\Controller\ControllerCore;

class HomeController extends ControllerCore
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Gaming Competition 2018';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Welcome to the 2018 Crap Graming Competition';
    
    /**
     * @var array $content
     */
    protected $content = array(
        'Have you ever wanted to make a game for your favourite Sinclair 8-bit computer? Now is your chance, and we want you to DO YOUR WORST!',
        'See our <a href="/rules" target="_blank" rel="nofollow">rules and regulations</a> before you submit your entry. If these are agreeable send your crap to <a href="mailto:shaun@square-circle.ZXco.uk" rel="nofollow">shaun@square-circle.co.uk</a> for evaluation!',
    );
    
    public function __construct(){
        ControllerCore::__construct();
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
