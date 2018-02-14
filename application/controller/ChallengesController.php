<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\ChallengesModel;

require_once(serverPath("/model/read/ChallengesModel.php"));

class ChallengesController extends ControllerCore
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
    protected $content = array();
    
    public function __construct(){
        ControllerCore::__construct();
        $this->sql = new ChallengesModel();
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
        $content = array();
        foreach($this->sql->getContent() as $key => $data){
            $content[$data['numeral']] = [
                'name' => $data['name'],
                'class' => $data['class'],
                'description' => json_decode($data['description'], true),
            ];
        }
        return $content;
    }
}
