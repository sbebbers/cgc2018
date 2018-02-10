<?php

class ChallengesController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Challenges';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Earn a crisp by entering one or more of our challenges';
    
    /**
     * @var array $content
     */
    protected $content = array(
        'I' => array(
            'name' => "One-Liner",
            'class' => "ink-bright-blue",
            'description' => array(
                "This is <strong class=\"ink-bright-red\">ZX Spectrum</strong> and compatible machines, as you are required to create your game (or other softwares) in only one line of BASIC only.",
                "Fortunately, the Speccy has a super-powerful interpreter that allows for so many possibilities in such small space.",
            ),
        ),
        'II' => array(
            'name' => "Twelve-Liner",
            'class' => "ink-bright-black",
            'description' => array(
                "Not to leave out the <strong>ZX80</strong> or <strong>ZX81</strong>, I guess the equivalent would be to make a software in 12 lines of BASIC for these mighty micros.",
                "If you require some hints, as long as you don't <strong>RUN</strong> your symbolic listings to execute it (i.e., use <strong>GOTO SGN PI</strong> instead) then you will not lose the VAR stack. In other words, your variables will be preserved when using <strong>SAVE</strong>.",
                "This is a 'Twelve-Liner' to allow for something like this at the end of your listing (though not possible on the ZX80 without a new ROM):",
                "9998 SAVE \"CRAP\"",
                "9999 GOTO SGN PI",
            ),
        )
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
