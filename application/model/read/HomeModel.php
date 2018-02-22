<?php
namespace Application\Model\Read;

use Application\Model\ModelCore;
use Application\Core\FrameworkException\FrameworkException;

require_once(serverPath("/model/ModelCore.php"));

class HomeModel extends ModelCore
{
    protected $table;
    public function __construct(){
        ModelCore::__construct("readUser");
        $this->table = $this->tables->home;
    }
    
    /**
     * Gets the generic view stuff
     * 
     * @param   string
     * @author  sbebbington
     * @date    24 Oct 2017 15:50:08
     * @return  string
     * @throws  FrameworkException
     */
    public function getContent(string $colName = 'content'){
        if(empty($colName) || !in_array($colName, ['header','sub_header','content'])){
            return '';
        }
        $query    = "SELECT `header`, `sub_header`, `content` FROM `{$this->db}`.`{$this->table}`;";
        return $this->execute($this->connection->prepare($query))[$colName];
    }
    
    /**
     * Returns the content for the page header
     * 
     * @author  Shaun B
     * @date    2018-02-17 12:30:05
     * @return string
     */
    public function getHeader(){
        return $this->getContent('header');
    }
    
    /**
     * Returns the content for the page sub header
     * 
     * @author  Shaun B
     * @date    2018-02-17 12:32:08
     * @return  string
     */
    public function getSubHeader(){
        return $this->getContent('sub_header');
    }
}
