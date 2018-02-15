<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\HomeModel;

require_once(serverPath("/model/read/HomeModel.php"));

class HomeController extends ControllerCore
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Welcome to the 2018 Crap Games Competition';
    
    /**
     * @var array $content
     */
    protected $content = array(
        'Have you ever wanted to make a game for your favourite Sinclair 8-bit computer? Now is your chance, and we want you to DO YOUR WORST!',
        'See our <a href="/rules" target="_blank" class="ink-bright-blue" rel="nofollow">rules and regulations</a> before you submit your entry. If these are agreeable send your crap to <a href="mailto:shaun@square-circle.ZX.co.uk" class="ink-bright-blue" rel="nofollow">shaun@square-circle.co.uk</a> for evaluation!',
        'If you need tips on how to create crap games for your Sinclair <strong>ZX80</strong>, <strong>ZX81</strong> or <strong class="ink-bright-red">ZX Spectrum</strong> then feel free to <a href="https://groups.google.com/forum/#!topic/comp.sys.sinclair/5m7PfF0IC30" target="_blank" rel="nofollow">ask questions here</a>.',
    );
    
    public function __construct(){
        ControllerCore::__construct();
        $this->sql = new HomeModel();
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
