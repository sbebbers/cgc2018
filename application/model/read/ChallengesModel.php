<?php
namespace Application\Model\Read;

use Application\Model\ModelCore;
use Application\Core\FrameworkException\FrameworkException;

require_once(serverPath("/model/ModelCore.php"));

class ChallengesModel extends ModelCore
{
    protected $table;
    public function __construct(){
        ModelCore::__construct("readUser");
        $this->table = $this->tables->challenges;
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
        $query    = "SELECT `numeral`, `name`, `class`, `description` FROM `{$this->db}`.`{$this->table}`";
        if(!empty($conditional)){
            $query .= " WHERE `numeral`=?";
        }
        $query .= ";";
        return $this->execute($this->connection->prepare($query), [$conditional], empty($conditional));
    }
}
