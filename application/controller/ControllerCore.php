<?php
namespace Application\Controller;

use Application\Library\Library;
use stdClass;
require_once (serverPath('/library/Library.php'));

class ControllerCore
{

    public $get;

    public $view;

    public $lib;

    public $sql;

    public $host;

    public function __construct()
    {
        $this->lib = new Library();
        if (! isset($_SESSION['flashMessage'])) {
            $_SESSION['flashMessage'] = array();
        }
        if (empty($this->get) || $this->get == null) {
            $this->get = array();
        }
        if (! empty($_GET)) {
            $this->setGet();
        }
        $this->view = new stdClass();
        $this->host = host();
    }

    /**
     * Sanatizes posted data
     *
     * @param
     *            Array
     * @author Linden && sbebbington
     * @date 7 Oct 2016 14:54:10
     * @version 0.1.5-RC2
     * @return void
     */
    public function setGet()
    {
        foreach ($_GET as $key => $data) {
            $this->get[$key] = is_string($data) ? trim($data) : $data;
        }
    }

    /**
     * This should empty the super global $_POST and the controller $this->post
     *
     * @author sbebbington
     * @date 16 Jun 2016 11:25:04
     * @version 0.1.5-RC2
     * @return array
     */
    public function emptyPost()
    {
        $_POST = array();
        $this->post = $_POST;
    }

    /**
     * Clears PHP session cookies
     *
     * @author sbebbington
     * @date 14 Sep 2016 14:29:23
     * @version 0.1.5-RC2
     * @return
     */
    public function emptySession()
    {
        if (session_id() != "") {
            session_destroy();
        }
        $this->session = null;
    }

    /**
     * Sets flash messages (recommend using string for value param)
     *
     * @param string $key
     * @param mixed $value
     * @author sbebbington
     * @date 14 Sep 2016 09:48:53
     * @version 0.1.5-RC2
     * @return void
     */
    public function setFlashMessage($key, $value)
    {
        $_SESSION['flashMessage'][$key] = $value;
    }

    /**
     * Gets the altenating
     *
     * @author Shaun B
     * @date 16 Feb 2018 14:35:43
     * @return array
     */
    public function getHRClasses()
    {
        return [
            'hr-bright-black',
            'hr-blue',
            'hr-red',
            'hr-magenta',
            'hr-green',
            'hr-cyan',
            'hr-yellow',
            'hr-bright-white'
        ];
    }
}
