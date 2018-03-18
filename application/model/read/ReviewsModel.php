<?php
namespace Application\Model\Read;

use Application\Model\ModelCore;
use Application\Core\FrameworkException\FrameworkException;

require_once(serverPath("/model/ModelCore.php"));

class ReviewsModel extends ModelCore
{
    protected $table;
    public function __construct(){
        ModelCore::__construct("readUser");
        $this->table = $this->tables->reviews;
    }
    
    /**
     * Returns content based on the Numeral identifier
     * 
     * @param   string
     * @author  sbebbington
     * @date    14 Feb 2018 22:44:08
     * @return  array
     * @throws  FrameworkException
     */
    public function getContent($conditional = null){
        $query    = "SELECT `title`, `sub_header`, `developer`, `mega_game`, `content`, `file_name`, `alt`,  "
            . "`summary`, `graphics`, `playability`, `addictiveness`, `total`, `sundry` "
            . "FROM `{$this->db}`.`{$this->table}`;";
        return $this->execute($this->connection->prepare($query), [], true);
    }
    
    /**
     * Gets the game titles only
     * 
     * @author  sbebbington
     * @date    18 Mar 2018 18:31:13
     * @return  array
     * @throws  FrameworkException
     */
    public function getTableOfContents(){
        $query  = "SELECT `title` FROM `{$this->db}`.`{$this->table}`;";
        return $this->execute($this->connection->prepare($query), [], true);
    }
}
