<?php

class EntriesController
{
    /**
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Entries';
    
    /**
     * @var string $subHeader
     */
    protected $subHeader = 'Here are our entries so far - <span class="ink-bright-cyan">to download each listed, click on the relevant screen shot</span>';
    
    /**
     * @var array $content
     */
    protected $content = array(
        'I' => array(
            'title' => "Winter Neurobics Pentathalon",
            'format' => "ZX Spectrum (48K or more recommended, 16K compatible)",
            'screen-shot' => array(
                'location' => "/img/",
                'file-name' => "winterneurobics.png",
                'alt' => "Kweepa's 2018 Winter [unofficial] Olympics tie-in",
                'class' => "img-responsive",
                'width' => '128',
                'height' => '96'
            ),
            'download' => '/download/winterneurobics.zip'
        ),
        'II' => array(
            'title' => "Winter Neurobics Pentathalon V1.1 ('Fixed' edition)",
            'format' => "ZX Spectrum (48K or more recommended, 16K compatible)",
            'screen-shot' => array(
                'location' => "/img/",
                'file-name' => "winterneurobics.png",
                'alt' => "'Fixed' version of Kweepa's 2018 [unofficial] Winter Olympics tie-in",
                'class' => "img-responsive",
                'width' => '128',
                'height' => '96'
            ),
            'download' => '/download/winterneurobicsV1.1.zip'
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
