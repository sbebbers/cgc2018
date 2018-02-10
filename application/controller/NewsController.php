<?php

class NewsController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 News';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'First. For. News.';
    
    /**
     * @var array $content
     */
    protected $content = array(
        array(
            'title' => "First Entry from Kweepa",
            'class' => "ink-bright-black",
            'description' => array(
                'Kweepa has submitted Winter Neurobics Pentathalon for the <strong class="ink-bright-red">ZX Spectrum</strong>.',
                'This game neatly ties in with the 2018 Winter Olympics, and is intended for machines with 48K of RAM or more, though 16K users are still supported with a text-only version. See our <a href="/entries" class="ink-bright-blue" rel="nofollow">entries</a> page to get this download.',
            ),
        ),
        array(
            'title' => "Carp Gaming Competition 2018 opens",
            'class' => "ink-bright-blue",
            'description' => array(
                '<strong>The guy who</strong> <strike>once</strike> <strong>wrote</strong> <strike>a small and insignificant amount of content</strike> <strong>for</strong> <strike>the</strike> <strong>Your Sinclair</strong> <strike>tribute issue that was free with Retro Gamer</strike> <strong>magazine</strong> has launched THIS CRAP GAMES COMPETITION. Want to make some software for your favourite Sinclair 8 bit (or compatible clone)? DO YOUR WORST!!!!!1one',
            ),
         ),
    );
    
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
