<?php
require_once (serverPath("/controller/ReviewsController.php"));

class AdventuresController extends ReviewsController
{

    /**
     *
     * @var string $header
     */
    protected $header = 'CGC Adventures';

    /**
     *
     * @var string $subHeader
     */
    protected $subHeader = 'You are looking at a website. The website seems rather crap. Below this text you will find reviews for your perusal. What now?';

    public function __construct()
    {
        ReviewsController::__construct(false);
        $this->view = new stdClass();
        $this->setGameType('1');
        $this->setView();
        if (empty($this->view->hrClasses)) {
            $this->view->hrClasses = $this->getHRClasses();
        }
    }
}
