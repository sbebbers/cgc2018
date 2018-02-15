<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\RulesModel;

require_once(serverPath("/application/model/read/RulesModel.php"));

class RulesController extends ControllerCore
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Rules';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'All submissions will hereby conform to the following rules. To challenge these rules, please contact c/o Mrs Yates, Ocean Software, Manchester.';
    
    /**
     * @var array $rules
     */
    protected $rules = [
        'I'     => "All submissions will run on either a Sinclair ZX80, ZX81, ZX Spectrum or compatible clones thereof;",
        'II'    => "In the event that a submission is not playable, it must have a point; I am aware that everything nowadays has to be an 'app' on modern devices such as the Atari Jaguar or Sony PlayStation, well I think that utilities, tools and other computer softwares should be encouraged, so more serious software will be allowed too;",
        'III'   => "Submissions will be emailed to <a href=\"mailto:shaun@square-circle.ZXco.uk\" title=\"Remove the relevant characters from this if clicking\" rel=\"nofollow\">shaun@square-circle.co.uk</a> in zipped format containing a workable image to run on suitable emulators. If you would like to submit your entry on real cassette then please contact me first, and include a self, stamped addressed envelope to receive your cassette back. Any entry submitted as a type-in will also be acceptable, as the Sinclair 'one-touch' entry makes BASIC programming even more simpler;",
        'IV'    => "As we all like to have a Christmas break, all entries will be submitted by 24th December 2018 at 23:59:48 GMT. Like all previous Comp.Sys.Sinclair Crap Games Competitions (and those that were C.S.S in name only) there will never be any extension to this deadline under any circumstances, and those who request a deadline extension will be charged with treason;",
        'V'     => "All submissions will be rigorously reviewed. Those worthy will achieve a 'Yawn Sinclair Mega Game' award;",
        'VI'    => "There will be two winners, one that is judged to be the actual winner, and another that is randomly selected by a Sinclair BASIC program that I wrote which uses the powerful RND command. Both winners will receive a bag of Transform-A-Snack for their efforts (this means that someone could win twice);",
        'VII'   => "The loser will be the person who submits an entry that is actually playable, the sort of game that you would consider loading twice because the first time provided something close to fun. This person will receive a pack of Chewits;",
        'VIII'  => "Small print leads to large risk;",
        'IX'    => "Please do not take anything too seriously. This is supposed to be fun, yeah? And,",
        'X'     => "All submissions will be distributed electronically via the Internet for free. If there is enough interest then a real cassette version as a compilation will be published some time in 2019. All entrants wanting their work to be published on cassette will receive a single Polo mint as payment for each copy sold. Any game which may land me or anyone else associated with this competition with legal difficulties will be disqualified from the outset",
    ];
    
    public function __construct(){
        ControllerCore::__construct();
        $this->sql = new RulesModel();
        $this->view = new stdClass();
        $this->setPageView();
    }
    
    /**
     * Sets up the $view variable which is accessible
     * to the view
     * 
     * @author  sbebbington
     * @date    7 Feb 2018 22:51:10
     * @version 1.0
     * @return  void
     */
    public function setPageView(){
        $this->view->header = $this->getHeader();
        $this->view->subHeader = $this->getSubHeader();
        $this->view->rules = $this->getRules();
    }
    
    /**
     * Returns the header for the <h1> tag
     * 
     * @author  sbebbington
     * @date    7 Feb 2018 22:52:38
     * @version 1.0
     * @return  string
     */
    public function getHeader(){
        return $this->header;
    }
    
    /**
     * Returns the strap line for the <h3> tag
     * 
     * @author  sbebbington
     * @date    7 Feb 2018 22:54:20
     * @version 1.0
     * @return  string
     */
    public function getSubHeader(){
        return $this->subHeader;
    }
    
    /**
     * Returns the rules as an array for the foreach() loop
     * 
     * @author  sbebbington
     * @date    7 Feb 2018 22:55:06
     * @version 1.0
     * @return  array
     */
    public function getRules(){
        return $this->rules;
    }
}
