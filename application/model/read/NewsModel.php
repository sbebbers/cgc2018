<?php
namespace Application\Model\Read;

use Application\Model\ModelCore;
use Application\Core\FrameworkException\FrameworkException;

require_once(serverPath("/model/ModelCore.php"));

class NewsModel extends ModelCore
{
    protected $table;
    public function __construct(){
        ModelCore::__construct("readUser");
        $this->table = $this->tables->news;
    }
    
    /**
     * Returns content based on the Numeral identifier
     * 
     * @author  sbebbington
     * @date    14 Feb 2018 22:44:08
     * @return  array
     * @throws  FrameworkException
     */
    public function getContent(){
        $query  = "SELECT `title`, `class`, `content` AS `description` FROM `{$this->db}`.`{$this->table}` ORDER BY UNIX_TIMESTAMP(`updated`) DESC;";
        return $this->execute($this->connection->prepare($query), [], true);
    }
}
