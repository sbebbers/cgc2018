<?php
namespace Application\Model\Read;

use Application\Model\ModelCore;

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
     * @version 0.1.5-RC2
     * @return  array
     */
    public function getContent(string $colName = ''){
        if(empty($colName) || !in_array($colName, ['header','sub_header','content'])){
            return '';
        }
        $query    = "SELECT `header`, `sub_header`, `content` FROM `{$this->db}`.`{$this->table}`;";
        return $this->execute($this->connection->prepare($query))[$colName];
    }
    
    public function getHeader(){
        return $this->getContent('header');
    }
    
    public function getSubHeader(){
        return $this->getContent('sub_header');
    }
}
