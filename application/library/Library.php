<?php
namespace Application\Library;

class Library
{

    private $key, $encryption;

    public function __construct()
    {
        $this->key = getConfig('key');
        $this->encryption = getConfig('encryptionType');
    }

    /**
     * For debugging objects, optional die and die message included
     * Parameters now allow for a header for each object
     *
     * @param mixed $variable
     * @param boolean $die
     * @param string $message
     * @param string $file
     * @param string $line
     * @param string $header
     * @author sbebbington && Linden
     * @date 26 Sep 2017 09:47:37
     * @version 0.1.5-RC2
     * @return void
     */
    public function debug($variable = null, bool $die = false, string $message = '', string $file = '', string $line = '', string $header = '')
    {
        if (getConfig('mode') != 'test') {
            return;
        }
        echo (strlen($header) > 0) ? "<div><h1>{$header}</h1>" : "";
        echo '<pre>' . print_r($variable, 1) . '</pre>';
        echo $file != null ? '<pre>File: ' . print_r($file, 1) . '</pre>' : "";
        echo $line != null ? '<pre>Line: ' . print_r($line, 1) . '</pre>' : "";
        echo (strlen($header) > 0) ? "</div>" : "";
        if ($die === true) {
            die("{$message}");
        }
    }

    /**
     * Returns current version of the site
     *
     * @author sbebbington B
     * @date 26 Sep 2017 10:05:31
     * @return string
     */
    public function version()
    {
        return getConfig('version');
    }

    /**
     * Is it Easter yet?
     * Try <?php echo $this->controllerInstance->libraryInstance->easterEgg(); ?> in your view
     *
     * @author sbebbington B
     * @date 2016-02-19
     * @return string
     * @todo Nothing as this function is perfect
     */
    public function easterEgg()
    {
        $easterEgg = chr(116) . chr(104) . chr(101) . chr(99) . chr(97) . chr(116) . chr(97) . chr(112) . chr(105);
        return trim("
            <div><a href=\"http://{$easterEgg}.com\" class=\"centre text-centre\" style=\"text-decoration:none;\"><img src=\"http://{$easterEgg}.com/api/images/get?format=src&type=gif\" alt=\"Easter Egg\"></a></div>
        ");
    }

    /**
     * Password encryption generator
     *
     * @param string $string
     * @param string $secret
     * @param int $padding
     * @param boolean $urlEncode
     * @author sbebbington && Stack Overflow
     * @date 1 Mar 2017 08:54:14
     * @version 0.1.5-RC2
     * @return string
     */
    public function encryptIt(string $string, string $secret = '', int $padding = 8, bool $urlEncode = false)
    {
        $md5 = ($secret === '') ? md5(md5($this->key)) : md5(md5($secret));
        $encrypt = $this->getEncryptionPadding($padding) . openssl_encrypt($string, $this->encryption, $md5) . $this->getEncryptionPadding($padding);
        return ($urlEncode === true) ? urlencode($encrypt) : "{$encrypt}";
    }

    /**
     * Password decryption generator
     *
     * @param string $string
     * @param string $secret
     * @param int $padding
     * @param boolean $urlDecode
     * @author sbebbington && Stack Overflow
     * @date 1 Mar 2017 08:57:23
     * @version 0.1.5-RC2
     * @return string
     */
    public function decryptIt(string $string, string $secret = '', int $padding = 8, bool $urlDecode = false)
    {
        $md5 = ($secret === '') ? md5(md5($this->key)) : md5(md5($secret));
        $decrypt = openssl_decrypt(substr($string, $padding, - $padding), $this->encryption, $md5);
        return ($urlDecode === true) ? urldecode($decrypt) : "{$decrypt}";
    }

    /**
     * Will add a random and predictable padding
     * to the encrypted and decrypted string.
     * Made
     * this method less like a ZX80 sub routine
     * (I had been experimenting with ZX80 BASIC
     * on that day so appologies)
     *
     * @param int $numberToPad
     * @author sbebbington
     * @date 1 Mar 2017 09:01:05
     * @version 0.1.5-RC2
     * @return string
     */
    public function getEncryptionPadding(int $numberToPad = 8)
    {
        $shuffle = "1q2w3e4r5t6y7u8i9o0p!AS" . utf8_encode("\xa3") . "D\$%F^G!H*J(K)L-z=x[c]v{b}n;m:QW@E#R*T<Y>U,I.O/P?a|s%d1f2g3h4j5k6l7Z8X9C0VBNM";
        $shuffle = str_shuffle("{$shuffle}");

        return substr($shuffle, 0, $numberToPad);
    }

    /**
     * This will convert the snake_case stuff typically used in databases
     * to normal camelCase typically used in PHP
     *
     * @param string $snake
     * @param string $delimiter
     * @author sbebbington
     * @date 6 Jul 2017 12:14:42
     * @version 0.1.5-RC2
     * @return string
     */
    public function convertSnakeCase(string $snake = null, string $delimiter = '_')
    {
        if ($snake != '') {
            $_snake = explode($delimiter, $snake);
            if (count($_snake) == 1) {
                return $snake;
            }
            $camelBuilder = '';
            foreach ($_snake as $key => $data) {
                $camelBuilder .= ($key === 0) ? $data : ucfirst($data);
            }
            return $camelBuilder;
        }
        return "{$snake}";
    }

    /**
     * Converts to camelCase where one or more dashes
     * appear in the string
     *
     * @param string $string
     * @author sbebbington
     * @date 6 Jul 2017 12:17:34
     * @version 0.1.5-RC2
     * @return string
     */
    public function camelCaseFromDashes(string $string = null)
    {
        return $this->convertSnakeCase($string, '-');
    }

    /**
     * Creates text suitable for HTML ids
     *
     * @param string $text
     * @author sbebbington
     * @date 12 Feb 2018 22:59:54
     * @return string
     */
    public function convertToHtmlId(string $text = '')
    {
        $toReplace = [
            "'" => "",
            '.' => " ",
            '(' => "",
            ')' => "",
            '_' => "-",
            '!' => "",
            '&amp;' => "",
            '&' => "",
            '*' => "",
            '@' => "",
            ' ' => "-"
        ];

        foreach ($toReplace as $key => $data) {
            $text = str_replace($key, $data, $text);
        }
        return strtolower(str_replace(" ", "-", trim($text)));
    }
}
