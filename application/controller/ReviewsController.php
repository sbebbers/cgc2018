<?php

class ReviewsController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Reviews';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Here you will find the latest reviews of the very best entries';
    
    /**
     * @var array $content
     */
    protected $content = array(
        array(
            'title' => "Winter Neurobics Pentathalon",
            'sub-header' => "Unofficial Winter Olymics 2018 tie-in",
            'developer' => "Kweepa",
            'yawn-sinclair-mega-game' => true,
            'content' => array(
                "It won't surprise anyone out there that I wasn't very good at sports when I were a lad. Not one bit. Of course, I used to play a game of Footy over the park with jumpers for goal posts, but I just wasn't ever very Footy-ish, and always the last to be picked for any sporty-type thing, so when this sports sim landed I feared the worst. Would it be a joystick-breaking or keyboard-bashing affair? Yikes!",
                "On loading <em>Winter Neurobics Pentathalon</em> though, my fears were quickly quashed; this is not just a mindless joystick waggler or keyboard basher, the task is to precisely time your interactions with the keyboard according to the on-screen prompt, so this is more of a celeberal workout than one which would quickly require a new keyboard membrane!",
                "Each of the five events, which are <strong class=\"ink-bright-blue\">Ski Jump</strong>, <strong class=\"ink-bright-blue\">Speed Skating</strong>, <strong class=\"ink-bright-blue\">Downhill Slalom</strong>, <strong class=\"ink-bright-blue\">Curling</strong>, and <strong class=\"ink-bright-blue\">Luge</strong> increase in difficulty respectively. In fact, at the time of writing, I've not yet managed a successful Luge run. And on the original sumbission (let's call it V1.0), the Luge event couldn't be completed, so that alone gets it an extra point!",
                "Make no mistake, <em>Winter Neurobics Pentathalon</em> is ACE! It's a new sort of sports sim for those of us who still don't want to replace our olde keyboard membranes any time soon, whilst providing a significant challenge that'll keep you coming back time and again. Capture the Winter Olympic fervour with this fab game!",
            ),
            'screen-shot' => array(
                'location' => "/img/",
                'file-name' => "Score.png",
                'alt' => "Shown working on a 16K Speccy",
                'class' => "img-responsive",
                'width' => '128',
                'height' => '96',
            ),
            'cgc-clapometer' => array(
                'summary' => "A great mental challenge which unlike other sports sims won't bust your keyboard!",
                'graphics' => 7,
                'playability' => 9,
                'addictiveness' => 9,
                'total' => 9,
                'sundry' => array(
                    "Note that 16K users are not treated to the high resolution graphics that 48K users are.",
                    "V1.1 is marked down to for <strong>Playability</strong> and <strong>Total</strong> by one point each due to it being a 'fixed' version."
                )
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
