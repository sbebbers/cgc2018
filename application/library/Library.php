<?php
namespace Application\Library;

class Library
{
    private $key,
            $encryption;
    
    public function __construct(){
        $this->key          = getConfig('key');
        $this->encryption   = getConfig('encryptionType');
    }
    
    /**
     * For debugging objects, optional die and die message included
     * Parameters now allow for a header for each object
     *
     * @param   object, boolean, string, string, string, string
     * @author  sbebbington && Linden
     * @date    26 Sep 2017 09:47:37
     * @version 0.1.5-RC2
     * @return   null
     */
    public function debug($variable = null, bool $die = false, string $message = '', string $file = '', string $line = '', string $header = ''){
        if(getConfig('mode') != 'test'){
            return null;
        }
        if(is_null($variable)){
            echo '<p>You need to send the scalar or resource that you are trying to debug as your first parameter, else this don\'t work</p>';
            exit;
        }
        echo (strlen($header) > 0) ? "<div><h1>{$header}</h1>" : "";
        echo '<pre>' . print_r($variable, 1) . '</pre>';
        echo $file != null ? '<pre>File: ' . print_r($file, 1) . '</pre>' : "";
        echo $line != null ? '<pre>Line: ' . print_r($line, 1) . '</pre>' : "";
        echo (strlen($header) > 0) ? "</div>" : "";
        if($die === true){
            die("{$message}");
        }
        return null;
    }
    
    /**
     * For seeing contents of variables or objects, optional die
     * and die message included
     *
     * @param   object, boolean, string, string, string
     * @author  sbebbington && Linden
     * @date    26 Sep 2017 09:47:15
     * @version 0.1.5-RC2
     * @return  null
     */
    public function dump($variable, bool $die = false, string $message = '', string $file = '', string $line = ''){
        if(getConfig('mode') != 'test'){
            return null;
        }
        echo var_dump($variable);
        echo $file != null ? '<pre>File: ' . print_r($file,1) . '</pre>' : "";
        echo $line != null ? '<pre>Line: ' . print_r($line,1) . '</pre>' : "";
        if($die === true){
            die($message);
        }
        return null;
    }
    
    /**
     * Site version
     *
     * @param   na
     * @author  sbebbington B
     * @date    26 Sep 2017 10:05:31
     * @return  string
     * @todo    Remember to update this number when
     *          enough changes constitute a new
     *          version
     */
    public function version(){
        return '1.1.0';
    }
    
    /**
     * Is it Easter yet?
     * Try <?phpecho $this->controllerInstance->libraryInstance->easterEgg(); ?> in your view
     * 
     * @param   na
     * @author  sbebbington B
     * @date    2016-02-19
     * @return  Something good
     * @todo    Nothing as this function is perfect
     */
    public function easterEgg(){
        $easterEgg = chr(116) . chr(104) . chr(101) . chr(99) . chr(97) . chr(116) . chr(97) . chr(112) . chr(105);
        return trim("
            <div class=\"container\">
                <a href=\"http://{$easterEgg}.com\">
                    <img src=\"http://{$easterEgg}.com/api/images/get?format=src&type=gif\" alt=\"Easter Egg\">
                </a>
            </div>
        ");
    }
    
    /**
     * Password encryption generator
     *
     * @param   string, sting, int, boolean
     * @author  sbebbington && Stack Overflow
     * @date    1 Mar 2017 08:54:14
     * @version 0.1.5-RC2
     * @return  string
     */
    public function encryptIt(string $string, string $secret = '', int $padding = 8, bool $urlEncode = false){
        $md5        = ($secret === '') ? md5(md5($this->key)) : md5(md5($secret));
        $encrypt    = $this->getEncryptionPadding($padding)
            . openssl_encrypt($string, $this->encryption, $md5)
            . $this->getEncryptionPadding($padding);
        return ($urlEncode === true) ? urlencode($encrypt) : "{$encrypt}";
    }
    
    /**
     * Password decryption generator
     *
     * @param   string, string, int, boolean
     * @author  sbebbington && Stack Overflow
     * @date    1 Mar 2017 08:57:23
     * @version 0.1.5-RC2
     * @return  string
     */
    public function decryptIt(string $string, string $secret = '', int $padding = 8, bool $urlDecode = false){
        $md5        = ($secret === '') ? md5(md5($this->key)) : md5(md5($secret));
        $decrypt    = openssl_decrypt(substr($string, $padding, -$padding), $this->encryption, $md5);
        return ($urlDecode === true) ? urldecode($decrypt) : "{$decrypt}";
    }
    
    /**
     * Will add a random and predictable padding
     * to the encrypted and decrypted string. Made
     * this method less like a ZX80 sub routine
     * (I had been experimenting with ZX80 BASIC
     * on that day so appologies)
     * 
     * @param   int
     * @author  sbebbington
     * @date    1 Mar 2017 09:01:05
     * @version 0.1.5-RC2
     * @return  string
     */
    public function getEncryptionPadding(int $numberToPad = 8){
        $shuffle    = "1q2w3e4r5t6y7u8i9o0p!AS£D\$%F^G!H*J(K)L-z=x[c]v{b}n;m:QW@E#R*T<Y>U,I.O/P?a|s%d1f2g3h4j5k6l7Z8X9C0VBNM";
        $shuffle    = str_shuffle("{$shuffle}");
        
        return substr($shuffle, 0, $numberToPad);        
    }
    
    /**
     * This will convert the snake_case stuff typically used in databases
     * to normal camelCase typically used in PHP
     * 
     * @param   string
     * @author  sbebbington
     * @date    6 Jul 2017 12:14:42
     * @version 0.1.5-RC2
     * @return  string
     */
    public function convertSnakeCase(string $snake = '', string $delimiter = '_'){
        if($snake != ''){
            $_snake             = explode($delimiter, $snake);
            if(count($_snake) == 1){
                return $snake;
            }
            $camelBuilder       = '';
            foreach($_snake as $key => $data){
                $camelBuilder   .= ($key === 0) ? $data : ucfirst($data);
            }
            return $camelBuilder;
        }
        return "{$snake}";
    }
    
    /**
     * Converts to camelCase where one or more dashes
     * appear in the string
     * 
     * @param   string
     * @author  sbebbington
     * @date    6 Jul 2017 12:17:34
     * @version 0.1.5-RC2
     * @return  string
     */
    public function camelCaseFromDashes($string){
        return $this->convertSnakeCase($string, '-');
    }
    
    /**
     * This will convert a camelCase string to
     * snake_case as database enthusiasts like
     * snake_case. A lot
     *
     * @param   string, int
     * @author  sbebbington
     * @date    3 Feb 2017 13:46:37
     * @version 0.1.5-RC2
     * @return  string
     */
    public function convertToSnakeCase(string $unSnaked = '', int $offset = 0){
        if($unSnaked === ''){
            return '';
        }
        $index          = $charBuffer = 0;
        $stringBuffer   = '';
        while($index < strlen($unSnaked)){
            $charBuffer = ord($unSnaked[$index]);
            if($index > $offset){
                if($charBuffer < 91 && $charBuffer > 64){
                    $charBuffer     += 32;
                    $stringBuffer   .= '_';
                }
            }
            $stringBuffer .= chr($charBuffer);
            $index++;
        }
        return "{$stringBuffer}";
    }
    
    /**
     * Cleanses and trims the data, used for posted data etc...
     * The recursion bit has been removed from the original
     * version as it seemed a little over-kill, although quite
     * clever; it will also handle HTML Special Chars if necessary
     *
     * @param   array, boolean, [array]
     * @author  sbebbington && Vietnam
     * @date    6 Jan 2017 15:36:29
     * @version 0.1.5-RC2
     * @return  array
     */
    public function cleanseInputs($data, bool $htmlSpecialChars = false, $cleanInput = array()){
        foreach($data as $key => $value){
            $cleanInput[$key] = ($htmlSpecialChars === false) ? trim(strip_tags($value)) : htmlspecialchars(trim($value));
        }
        return $cleanInput;
    }
    
    /**
     * Used for identifying .local and .localhost sites to set
     * PHP error reporting - send true to the method to return
     * the subdomain, i.e., staging or test, or whatever the
     * Reapit is for staging domains
     *
     * @param   boolean
     * @author  sbebbington
     * @date    10 Jan 2017 09:25:07
     * @version 0.1.5-RC2
     * @return  string
     */
    public function domainType(bool $subDomain = false){
        $host   = explode(".", $this->host());
        return ($subDomain === false) ? $host[count($host)-1] : $host[0];
    }
    
    /**
     * Turns a PHP array into JSON; use
     * true for the second value to trim
     * the data in array to convert to
     * JSON
     *
     * @param   array|resource, [bool]
     * @author  sbebbington
     * @date    10 Jan 2017 15:56:39
     * @version 0.1.5-RC2
     * @return  \JsonSerializable
     */
    public function convertToJSON(array $data = array(), bool $trimData = false){
        if(!empty($data) && $trimData === true){
            foreach($data as $k => $d){
                $data[$k] = (is_string($k)) ? trim($k) : $k;
            }
        }
        return json_encode($data);
    }
    
    /**
     * Creates text suitable for HTML ids
     * 
     * @param   string
     * @author  sbebbington
     * @date    12 Feb 2018 22:59:54
     * @return string
     */
    public function convertToHtmlId(string $text = ''){
        $toReplace = [
            "'" => "",
            '.' => " ",
            '(' => "",
            ')' => "",
        ];
        foreach($toReplace as $key => $data){
            $text = str_replace($key, $data, $text);
        }
        return strtolower(str_replace(" ", "-", trim($text)));
    }
}
