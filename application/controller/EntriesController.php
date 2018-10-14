<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\EntriesModel;

require_once (serverPath("/model/read/EntriesModel.php"));

class EntriesController extends ControllerCore
{

    /**
     *
     * @var $header
     */
    protected $header = 'Crap Games Competition 2018 Entries';

    /**
     *
     * @var $subHeader
     */
    protected $subHeader = 'Here are our entries so far - <span class="ink-bright-cyan">to download each listed, click on the relevant screen shot</span>';

    public function __construct()
    {
        ControllerCore::__construct();
        $this->sql = new EntriesModel();
        $this->setView();
    }

    /**
     * Sets page view object
     *
     * @author Shaun B
     * @date 2018-02-17 12:49:17
     * @return void
     */
    public function setView()
    {
        $this->view->header = $this->getHeader();
        $this->view->subHeader = $this->getSubHeader();
        $this->view->content = $this->getContent();
        if (empty($this->view->hrClasses)) {
            $this->view->hrClasses = $this->getHRClasses();
        }
    }

    /**
     * Returns the page view content
     *
     * @author Shaun B
     * @date 2018-02-17 12:50:20
     * @return string
     */
    public function getHeader()
    {
        return $this->header;
    }

    /**
     * Returns the page sub header text
     *
     * @author Shaun B
     * @date 2018-02-17 13:13:23
     * @return string
     */
    public function getSubHeader()
    {
        return $this->subHeader;
    }

    /**
     * Prepares the page content ready for the view
     *
     * @author Shaun B
     * @date 2018-02-17 13:14:26
     * @return array
     */
    public function getContent()
    {
        $content = array();
        foreach ($this->sql->getContent() as $data) {
            $content[$data['numeral']] = [
                'title' => $data['title'],
                'format' => $data['format'],
                'screen-shot' => [
                    'location' => '/img/',
                    'file-name' => $data['filename'],
                    'alt' => $data['alt'],
                    'class' => 'img-responsive',
                    'width' => '128',
                    'height' => '96'
                ],
                'download' => "/download/{$data['download']}"
            ];
        }
        return $content;
    }
}
