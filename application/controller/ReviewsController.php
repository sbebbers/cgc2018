<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\ReviewsModel;

require_once(serverPath("/model/read/ReviewsModel.php"));

class ReviewsController extends ControllerCore
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Reviews';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Here you will find the latest reviews of the very best entries';
    
    public function __construct(){
        ControllerCore::__construct();
        $this->sql = new ReviewsModel();
        $this->view = new stdClass();
        $this->setView();
        if(empty($this->view->hrClasses)){
            $this->view->hrClasses = $this->getHRClasses();
        }
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
            $content[$key]['title'] = $data['title'];
            $content[$key]['sub-header'] = $data['sub_header'];
            $cohtent[$key]['developer'] = $data['developer'];
            $content[$key]['yawn-sinclair-mega-game'] = $data['mega_game'];
            $content[$key]['content'] = json_decode($data['content'], true);
            $content[$key]['screen-shot'] = array(
                'location' => '/img/',
                'file-name' => $data['file_name'],
                'alt' => $data['alt'],
                'class' => 'img-responsive',
                'width' => '256',
                'height' => '192',
            );
            $content[$key]['cgc-clapometer'] = array(
                'summary' => $data['summary'],
                'graphics' => $data['graphics'],
                'playability' => $data['playability'],
                'addictiveness' => $data['addictiveness'],
                'total' => $data['total'],
                'sundry' => json_decode($data['sundry'], true),
            );
        }
        return $content;
    }    
}
