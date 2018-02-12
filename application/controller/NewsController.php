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
            'title' => "Plumbers Don't Wear Ties!",
            'class' => "ink-bright-black",
            'description' => array(
                '',
            ),
        ),
        array(
            'title' => "Fortress released",
            'class' => "ink-bright-blue",
            'description' => array(
                '',
            ),
        ),
        array(
            'title' => "Number Guesser",
            'class' => "ink-bright-black",
            'description' => array(
                'As an example of what you can do in just 12 lines of the powerful <strong>ZX81 BASIC</strong>, I made <em>Number Guesser</em> to give all those Zeddy fans some inspiration.',
                'If you like type-ins, see the <a href="https://groups.google.com/forum/#!topic/comp.sys.sinclair/2wbgULi8rVY" target="_blank" class="ink-bright-blue" rel="nofollow">Comp.Sys.Sinclair thread</a>, or it is available in .P format (for emulators and ZXPand users) from <a href="http://www.sinclairzxworld.com/viewtopic.php?f=5&t=2777" target="_blank" class="ink-bright-blue" rel="nofollow">Sinclair ZX World</a>, which includes a <strong>ZX80</strong> port, which is actually 13 lines of BASIC.',
            ),
        ),
        array(
            'title' => "Winter Neurobics Pentathalon update",
            'class' => "ink-bright-blue",
            'description' => array(
                'Kweepa has updated his entry as it had something called a \'bug\' which required \'fixing\'.',
                'There doesn\'t seem to be anything in the rules against this so a new version will be available on the \'Entries\' page shortly.',
            ),
        ),
        array(
            'title' => "First Entry from Kweepa",
            'class' => "ink-bright-black",
            'description' => array(
                'Kweepa has submitted <em>Winter Neurobics Pentathalon</em> for the <strong class="ink-bright-red">ZX Spectrum</strong>.',
                'This game neatly ties in with the 2018 Winter Olympics, and is intended for machines with 48K of RAM or more, though 16K users are still supported with a text-only version. See our <a href="/entries" class="ink-bright-blue" rel="nofollow">entries</a> page to get this download.',
            ),
        ),
        array(
            'title' => "Carp Games Competition 2018 opens",
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
