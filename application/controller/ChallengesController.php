<?php
use Application\Controller\ControllerCore;
use Application\Model\Read\ChallengesModel;

require_once (serverPath("/model/read/ChallengesModel.php"));

class ChallengesController extends ControllerCore
{

    /**
     *
     * @var string $header
     */
    protected $header = 'Crap Games Competition 2018 Challenges';

    /**
     *
     * @var string $subHeader
     */
    protected $subHeader = 'Earn a crisp by entering one or more of our challenges';

    public function __construct()
    {
        ControllerCore::__construct();
        $this->sql = new ChallengesModel();
        $this->setView();
    }

    /**
     * Sets the page view objects
     *
     * @author Shaun B
     * @date 2018-02-17 12:25:59
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
     * Sets the page header object
     *
     * @author Shaun B
     * @date 2018-02-17 12:25:02
     * @return string
     */
    public function getHeader()
    {
        return $this->header;
    }

    /**
     * Sets the sub header of the page
     *
     * @author Shaun B
     * @date 2018-02-17 12:33:11
     * @return string
     */
    public function getSubHeader()
    {
        return $this->subHeader;
    }

    /**
     * Sorts out Db data to something suitable to
     * the page view
     *
     * @author ShaunB
     * @date 2018-02-17 12:37:14
     * @return array
     */
    public function getContent()
    {
        $content = array();
        foreach ($this->sql->getContent() as $data) {
            $content[$data['numeral']] = [
                'name' => $data['name'],
                'class' => $data['class'],
                'description' => json_decode($data['description'], true)
            ];
        }
        return $content;
    }
}
