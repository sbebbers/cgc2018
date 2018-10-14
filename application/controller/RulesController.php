<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\RulesModel;

require_once (serverPath("/model/read/RulesModel.php"));

class RulesController extends ControllerCore
{

    /**
     *
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Rules';

    /**
     *
     * @var string $subHeader
     */
    protected $subHeader = 'All submissions will hereby conform to the following rules. To challenge these rules, please contact c/o Mrs Yates, Ocean Software, Manchester.';

    public function __construct()
    {
        ControllerCore::__construct();
        $this->sql = new RulesModel();
        $this->view = new stdClass();
        $this->setPageView();
        if (empty($this->view->hrClasses)) {
            $this->view->hrClasses = $this->getHRClasses();
        }
    }

    /**
     * Sets up the $view variable which is accessible
     * to the view
     *
     * @author sbebbington
     * @date 7 Feb 2018 22:51:10
     * @version 1.0
     * @return void
     */
    public function setPageView()
    {
        $this->view->header = $this->getHeader();
        $this->view->subHeader = $this->getSubHeader();
        $this->view->rules = $this->getRules();
    }

    /**
     * Returns the header for the <h1> tag
     *
     * @author sbebbington
     * @date 7 Feb 2018 22:52:38
     * @version 1.0
     * @return string
     */
    public function getHeader()
    {
        return $this->header;
    }

    /**
     * Returns the strap line for the <h3> tag
     *
     * @author sbebbington
     * @date 7 Feb 2018 22:54:20
     * @version 1.0
     * @return string
     */
    public function getSubHeader()
    {
        return $this->subHeader;
    }

    /**
     * Returns the rules as an array for the foreach() loop
     *
     * @author sbebbington
     * @date 7 Feb 2018 22:55:06
     * @version 1.0
     * @return array
     */
    public function getRules()
    {
        $content = [];
        foreach ($this->sql->getContent() as $data) {
            $content[$data['numeral']] = $data['rule'];
        }
        return $content;
    }
}
