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
    
    /**
     * 1 for arcade, 0 for arcade/action
     * @var string $gameType
     */
    protected $gameType = '';
    
    public function __construct(){
        ControllerCore::__construct();
        $this->sql = new ReviewsModel();
        $this->view = new stdClass();
        $this->setGameType('0');
        $this->setView();
        if(empty($this->view->hrClasses)){
            $this->view->hrClasses = $this->getHRClasses();
        }
	}
	
	public function setGameType(string $gameType){
	    $this->gameType = $gameType;
	}
	
	/**
	 * Returns the game type
	 * 
	 * @author  sbebbington
	 * @date    7 May 2018 16:27:14
	 * @return  string
	 */
	public function getGameType(){
	    return $this->gameType;
	}
    
    public function setView(){
        $this->view->header = $this->getHeader();
        $this->view->subHeader = $this->getSubHeader();
        $gameType = $this->getGameType();
        $this->view->content = $this->getContent($gameType);
        $this->view->tableOfContents = $this->getTableOfContents($gameType);
	}
    
    public function getHeader(){
        return $this->header;
    }
    
    public function getSubHeader(){
        return $this->subHeader;
    }
    
    /**
     * Gets the contents by game type
     * (0 for action/arcade and 1 for adventure)
     * 
     * @param   string $gameType
     * @author  sbebbignton
     * @date    7 May 2018 16:21:57
     * @return  array
     */
    public function getContent(string $gameType = '0'){
        $content = array();
        $contents = $this->sql->getContent($gameType);
        
        foreach($contents as $key => $data){
			$content[$key]['title'] = $data['title'];
            $content[$key]['sub-header'] = $data['sub-header'];
			if(!empty($data['developer'])){
				$content[$key]['developer'] = $data['developer'];
			}
            $content[$key]['yawn-sinclair-mega-game'] = (int)$data['yawn-sinclair-mega-game'];
            $content[$key]['content'] = json_decode($data['content'], true);
            $content[$key]['screen-shot'] = array(
                'location' => '/img/',
                'file-name' => $data['file-name'],
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
    
    /**
     * Gets the contents by game type
     * (0 for arcade/action and 1 for adventure)
     * 
     * @param   string $gameType
     * @author  sbebbington
     * @date    7 May 2018 16:23:04
     * @return  array
     */
    public function getTableOfContents(string $gameType = '0'){
        $returnValues = array();
        if($gameType == '0'){
            $returnValues['cgc-adventures'] = "GCG Adventures";
        }
        $tableOfContents = $this->sql->getTableOfContents($gameType);
        
        foreach($tableOfContents as $key => $data){
            $_data = $this->lib->convertToHtmlId($data['title']);
            $returnValues[$_data] = $data['title'];
        }
        return $returnValues;
    }
}
