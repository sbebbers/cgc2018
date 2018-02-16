<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\EntriesModel;

require_once(serverPath("/model/read/EntriesModel.php"));

class EntriesController extends ControllerCore
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Entries';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Here are our entries so far - <span class="ink-bright-cyan">to download each listed, click on the relevant screen shot</span>';
    
    public function __construct(){
        ControllerCore::__construct();
        $this->sql = new EntriesModel();
        $this->setView();
    }
    
    /**
     * Sets page view object
     * 
     * @return  void
     */
    public function setView(){
        $this->view->header = $this->getHeader();
        $this->view->subHeader = $this->getSubHeader();
        $this->view->content = $this->getContent();
        if(empty($this->view->hrClasses)){
            $this->view->hrClasses = $this->getHRClasses();
        }
    }
    
    /**
     * @return string
     */
    public function getHeader(){
        return $this->header;
    }
    
    /**
     * @return string
     */
    public function getSubHeader(){
        return $this->subHeader;
    }
    
    /**
     * @return  array
     */
    public function getContent(){
        $content = array();
        foreach($this->sql->getContent() as $key => $data){
            $content[$data['numeral']] = [
                'title' => $data['title'],
                'format' => $data['format'],
                'screen-shot' => [
                    'location' => '/img/',
                    'file-name' => $data['filename'],
                    'alt' => $data['alt'],
                    'class' => 'img-responsive',
                    'width' => '128',
                    'height' => '96',
                ],
                'download' => "/download/{$data['download']}",
            ];
        }
        return $content;
    }
}
