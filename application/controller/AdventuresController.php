<?php

require_once(serverPath("/controller/ReviewsController.php"));

class AdventuresController extends ReviewsController
{
    /**
     * @var string $header
     */
    protected $header = 'CGC Adventures';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'You are looking at a website. The website seems rather crap. Below this text you will find reviews for your perusal. What now?';
    
    public function __construct(){
        ReviewsController::__construct(false);
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
        $this->view->tableOfContents = $this->getTableOfContents();
	}
    
    public function getHeader(){
        return $this->header;
    }
    
    public function getSubHeader(){
        return $this->subHeader;
    }
    
    public function getContent(){
        $content = array();
        $contents = $this->sql->getContent();
        
        foreach($contents as $key => $data){
			$content[$key]['title'] = $data['title'];
            $content[$key]['sub-header'] = $data['sub_header'];
			if(!empty($data['developer'])){
				$content[$key]['developer'] = $data['developer'];
			}
            $content[$key]['yawn-sinclair-mega-game'] = (int)$data['mega_game'];
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
    
    public function getTableOfContents(){
        $returnValues = array();
        $tableOfContents = $this->sql->getTableOfContents();
        
        foreach($tableOfContents as $key => $data){
            $_data = $this->lib->convertToHtmlId($data['title']);
            $returnValues[$_data] = $data['title'];
        }
        return $returnValues;
    }
}
