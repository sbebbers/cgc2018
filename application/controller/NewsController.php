<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\NewsModel;

require_once (serverPath("/model/read/NewsModel.php"));

class NewsController extends ControllerCore
{

    /**
     *
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 News';

    /**
     *
     * @var string $subHeader
     */
    protected $subHeader = 'First. For. News.';

    public function __construct()
    {
        ControllerCore::__construct();
        $this->sql = new NewsModel();
        $this->view = new stdClass();
        $this->setView();
        if (empty($this->view->hrClasses)) {
            $this->view->hrClasses = $this->getHRClasses();
        }
    }

    /**
     * Sets the view object
     *
     * @author Shaun B
     * @date 17 Feb 2018 15:09:13
     * @return void
     */
    public function setView()
    {
        $this->view->header = $this->getHeader();
        $this->view->subHeader = $this->getSubHeader();
        $this->view->content = $this->getContent();
    }

    /**
     * Returns header
     *
     * @author Shaun B
     * @date 17 Feb 2018 15:10:21
     * @return string
     */
    public function getHeader()
    {
        return $this->header;
    }

    /**
     * Returns page sub header
     *
     * @author Shaun B
     * @date 17 Feb 2018 15:11:08
     * @return string
     */
    public function getSubHeader()
    {
        return $this->subHeader;
    }

    /**
     * Retrieves database content
     *
     * @author Shaun B
     * @date 17 Feb 2018 15:12:19
     * @return array
     */
    public function getContent()
    {
        $content = array();
        foreach ($this->sql->getContent() as $key => $data) {
            $content[$key]['title'] = $data['title'];
            $content[$key]['class'] = $data['class'];
            $content[$key]['content'] = json_decode($data['content'], true);
        }
        return $content;
    }
}
