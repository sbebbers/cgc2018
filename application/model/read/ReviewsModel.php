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
     * @param   string $gameType
     * @author  sbebbington
     * @date    7 May 2018 16:02:45
     * @return  array
     * @throws  FrameworkException
     */
    public function getContent(string $gameType = '0'){
        $query    = "SELECT `title`, `sub_header` AS `sub-header`, "
            . "`developer`, `mega_game` AS `yawn-sinclair-mega-game`, "
            . "`content`, `file_name` AS `file-name`, `alt`,  "
            . "`summary`, `graphics`, `playability`, `addictiveness`, `total`, `sundry` "
            . "FROM `{$this->db}`.`{$this->table}` WHERE `game_type`='{$gameType}';";
        return $this->execute($this->connection->prepare($query), [], true);
    }
    
    /**
     * Gets the game titles only
     * 
     * @param   string $gameType
     * @author  sbebbington
     * @date    7 May 2018 16:00:27
     * @return  array
     * @throws  FrameworkException
     */
    public function getTableOfContents(string $gameType = '0'){
        $query  = "SELECT `title` FROM `{$this->db}`.`{$this->table}` WHERE `game_type`='{$gameType}';";
        return $this->execute($this->connection->prepare($query), [], true);
    }
}