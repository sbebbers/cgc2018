<?php
namespace Application\Core\Framework;

use Application\Library\Library;
require_once (serverPath("/library/Library.php"));

class HtmlBuilder
{

    /**
     * @var Library $lib
     */
    public $lib;

    public function __construct()
    {
        $this->lib = new Library();
    }

    /**
     * Tests the extension
     *
     * @author sbebbington
     * @date 16 Jan 2017 - 17:19:50
     * @version 0.1.5-RC2
     * @return $this
     */
    public function test()
    {
        print("<p>HtmlBuilder test</p>");
        return $this;
    }

    /**
     * Opens a paragraph tag
     *
     * @author sbebbington
     * @date 23 Jan 2017 - 09:15:10
     * @version 0.1.5-RC2
     * @return $this
     */
    public function p()
    {
        print("<p");
        return $this;
    }

    /**
     * Opens an a tag
     *
     * @param string $id
     * @param string $href
     * @param string $target
     * @param string $onClick
     * @param string $class
     * @param mixed $style
     * @param boolean $close
     * @author sbebbington
     * @date 30 Mar 2017 - 11:30:31
     * @version 0.1.5-RC2
     * @return $this
     */
    public function a($id = null, $href = null, $target = null, $onClick = null, $class = null, $style = null, $close = true)
    {
        print("<a");

        if (strlen($id)) {
            print(" id=\"{$id}\"");
        }
        if (strlen($href)) {
            print(" href=\"{$href}\"");
        }
        if (strlen($target)) {
            print(" target=\"{$target}\"");
        }
        if (strlen($onClick)) {
            print(" onclick=\"{$onClick}\"");
        }
        if (strlen($class)) {
            print(" class=\"{$class}\"");
        }
        if (! empty($style) && (is_string($style))) {
            $this->style($style);
        }
        if ($close === true) {
            print(">");
        }

        return $this;
    }

    /**
     * Makes a HR element
     *
     * @param string $id
     * @param string $class
     * @author sbebbington
     * @date 5 Apr 2017 - 16:14:08
     * @version 0.1.5-RC2
     * @return $this
     */
    public function hr($id = null, $class = null)
    {
        print("<hr");
        if (strlen($id)) {
            print(" id=\"{$id}\"");
        }
        if (strlen($class)) {
            print(" class=\"{$class}\"");
        }
        print(" />");

        return $this;
    }

    /**
     * Adds an ID attribute to an HTML element
     *
     * @param string $id
     * @author sbebbington
     * @date 23 Jan 2017 - 09:15:29
     * @version 0.1.5-RC2
     * @return $this
     */
    public function id($id = null)
    {
        print(" id=\"{$id}\"");
        return $this;
    }

    /**
     * Added in HTML span
     *
     * @param string $id
     * @param string $class
     * @author sbebbington
     * @date 10 Apr 2017 - 09:36:45
     * @version 0.1.5-RC2
     * @return $this
     */
    public function span($id = null, $class = null)
    {
        print("<span");

        if (strlen($id) > 0) {
            $this->id($id);
        }
        if (! is_null($class)) {
            $this->addClass($class);
        }
        print(">");

        return $this;
    }

    /**
     * Generates the HTML image tag
     *
     * @param string $id
     * @param string $path
     * @param int $width
     * @param int $height
     * @param string $alt
     * @param string $class
     * @author sbebbington
     * @date 29 Mar 2017 - 11:37:44
     * @version 0.1.5-RC2
     * @return $this
     */
    public function img($id = null, $path, int $width = 0, int $height = 0, $alt = null, $class = null)
    {
        print("<img");
        if (! empty($id)) {
            print(" id=\"{$id}\"");
        }
        print(" src=\"{$path}\"");
        if ($width > 0) {
            print(" width=\"{$width}\"");
        }
        if ($height > 0) {
            print(" height=\"{$height}\"");
        }
        if (! empty($alt)) {
            print(" alt=\"{$alt}\"");
        }
        if (! empty($class)) {
            print(" class=\"{$class}\"");
        }
        print(" />");

        return $this;
    }

    /**
     * Adds a class attribute to an HTML element
     *
     * @param mixed $class
     * @author sbebbington
     * @date 23 Jan 2017 - 09:16:35
     * @version 0.1.5-RC2
     * @return $this
     */
    public function addClass($class)
    {
        if (! is_string($class) && ! is_array($class)) {
            print(">" . PHP_EOL);
            $this->lib->debug("Please send your classes for your HTML element as a string or an array", true);
        }
        print(" class=\"");
        $_class = '';
        if (is_array($class)) {
            foreach ($class as $classes) {
                $_class .= "{$classes} ";
            }
            $_class = rtrim($_class, " ");
        } else {
            $_class .= "{$class}";
        }
        print("{$_class}\"");

        return $this;
    }

    /**
     * Adds in data attribute, send the name of the attribute
     * followed by the relevant attribute value
     *
     * @param string $attrName
     * @param string $data
     * @author sbebbington
     * @date 23 Jan 2017 - 09:26:47
     * @version 0.1.5-RC2
     * @return $this
     */
    public function dataAttr($attrName, $data)
    {
        print(" data-{$attrName}=\"{$data}\"");

        return $this;
    }

    /**
     * Adds in the placeholder for elements
     * that use it
     *
     * @param string $placeHolder
     * @author sbebbington
     * @date 11 Apr 2017 - 10:03:08
     * @version 0.1.5-RC2
     * @return $this
     */
    public function placeHolder($placeHolder = null)
    {
        print(" placeholder");
        if (strlen($placeHolder)) {
            print("=\"{$placeHolder}\"");
        }

        return $this;
    }

    /**
     * Closes an element either with a > or a />
     * with false or true respecitively
     *
     * @param boolean $selfClose
     * @author sbebbington
     * @date 23 Jan 2017 - 09:30:19
     * @version 0.1.5-RC2
     * @return $this
     */
    public function closeElement($selfClose = false)
    {
        print($selfClose === false ? ">" : " />");

        return $this;
    }

    /**
     * Writes text, intended to be used within an element
     * If you have encoded your text with htmlspecialchars
     * then send true as the second parameter to decode
     *
     * @param string $text
     * @param boolean $decode
     * @author sbebbington
     * @date 23 Jan 2017 - 09:31:27
     * @version 0.1.5-RC2
     * @return $this
     */
    public function text($text, $decode = false)
    {
        print($decode === false ? $text : htmlspecialchars_decode($text));

        return $this;
    }

    /**
     * Generates a <textarea></textarea>
     * for your view
     *
     * @param string $id
     * @param string $name
     * @param int $rows
     * @param int $cols
     * @param string $placeHolder
     * @param string $class
     * @param boolean $required
     * @author sbebbington
     * @date 30 Mar 2017 - 14:25:06
     * @version 0.1.5-RC2
     * @return $this
     */
    public function textArea($id = null, $name = null, int $rows = 0, int $cols = 0, $placeHolder = null, $class = null, $required = false)
    {
        print("<textarea");

        if (! empty($id)) {
            print(" id=\"{$id}\"");
        }
        if (! empty($name)) {
            print(" name=\"{$name}\"");
        }
        if ($rows > 0) {
            print(" rows=\"{$rows}\"");
        }
        if ($cols > 0) {
            print(" cols=\"{$cols}\"");
        }
        if (! empty($placeHolder)) {
            print(" placeholder=\"{$placeHolder}\"");
        }
        if (! empty($class)) {
            print(" class=\"{$class}\"");
        }
        if ($required === true) {
            print(" required=\"required\"");
        }
        print(">");

        return $this;
    }

    /**
     * Opens a form tag - added in encoding type
     * to handle input type file stuff
     *
     * @param string $id
     * @param string $action
     * @param string $method
     * @param string $class
     * @param mixed $style
     * @param string $encType
     * @author sbebbington
     * @date 22 May 2017 - 11:48:40
     * @version 0.1.5-RC2
     * @return $this
     */
    public function form($id = null, $action = null, $method = 'post', $class = null, $style = null, $encType = null)
    {
        print("<form");

        if (! empty($id)) {
            print(" id=\"{$id}\"");
        }
        if (! empty($action)) {
            print(" action=\"{$action}\"");
        }
        if (! empty($method)) {
            print(" method=\"{$method}\"");
        }
        if (! empty($class)) {
            print(" class=\"{$class}\"");
        }
        if (! empty($style) && (is_string($style))) {
            $this->style($style);
        }
        if (! empty($encType)) {
            print(" enctype=\"{$encType}\"");
        }
        $this->closeElement(false);

        return $this;
    }

    /**
     * Opens an input element
     *
     * @author sbebbington
     * @date 23 Jan 2017 - 09:44:29
     * @version 0.1.5-RC2
     * @return $this
     */
    public function input()
    {
        print("<input");

        return $this;
    }

    /**
     * Label generator - bug/typo fixed edition
     * Without sending the $text parameter, the
     * label element will be left open and one
     * must therefore use $this->close('label')
     * or end up with dodgy mark-up and HTML
     * validation errors
     *
     * @param string $text
     * @param string $id
     * @param string $for
     * @param string $class
     * @param mixed $style
     * @author sbebbington
     * @date 22 May 2017 - 11:15:23
     * @version 0.1.5-RC2
     * @return $this
     */
    public function label($text, $id = null, $for = null, $class = null, $style = null)
    {
        print("<label");

        if (! empty($id)) {
            print(" id=\"{$id}\"");
        }
        if (! empty($for)) {
            print(" for=\"{$for}\"");
        }
        if (! empty($class)) {
            print(" class=\"{$class}\"");
        }
        if (! empty($style) && (is_string($style) || is_array($style))) {
            $this->style($style);
        }
        if (! empty($text)) {
            print(">{$text}</label>");
        } else {
            print(">");
        }

        return $this;
    }

    /**
     * Used for naming a form element
     *
     * @param string $name
     * @author sbebbington
     * @date 23 Jan 2017 - 09:49:19
     * @version 0.1.5-RC2
     * @return $this
     */
    public function name($name)
    {
        print(" name=\"{$name}\"");

        return $this;
    }

    /**
     * Used for input type (hidden, text etc...)
     *
     * @param string $type
     * @author sbebbington
     * @date 23 Jan 2017 - 09:50:04
     * @version 0.1.5-RC2
     * @return $this
     */
    public function type($type)
    {
        print(" type=\"{$type}\"");

        return $this;
    }

    /**
     * A value for your input type
     *
     * @param string $value
     * @author sbebbington
     * @date 23 Jan 2017 - 09:51:04
     * @version 0.1.5-RC2
     * @return $this
     */
    public function value($value)
    {
        print(" value=\"{$value}\"");

        return $this;
    }

    /**
     * Used if you want to disable an input or other
     * form element
     *
     * @param boolean $disabled
     * @author sbebbington
     * @date 23 Jan 2017 - 09:52:23
     * @version 0.1.5-RC2
     * @return $this
     */
    public function disabled($disabled = true)
    {
        print($disabled === true ? " disabled=\"disabled\"" : "");

        return $this;
    }

    /**
     * For <select id="id" name="name" class="class"><option></option></select>
     * Option values will be the $key and the display will be $data in the
     * array; if you want a selected item from the drop down, send the key
     * name of the item to be marked as selected after the options array
     *
     * @param string $id
     * @param string $name
     * @param string $class
     * @param array $options
     * @param string $selected
     * @param boolean $close
     * @author sbebbington
     * @date 27 Feb 2017 - 10:42:12
     * @version 0.1.5-RC2
     * @return $this
     */
    public function select($id = null, $name = null, $class = null, array $options, $selected = null, $close = true)
    {
        print("<select");
        if (! empty($id)) {
            print(" id=\"{$id}\"");
        }
        if (! empty($name)) {
            print(" name=\"{$name}\"");
        }
        if (! empty($class)) {
            print(" class=\"{$class}\"");
        }
        print(">");
        if (! empty($options)) {
            $this->option($options, $selected);
        }
        print($close === true ? "</select>" : "");

        return $this;
    }

    /**
     * Builds the options for your select
     *
     * @param array $options
     * @param string $selected
     * @author sbebbington
     * @date 6 Jul 2017 - 12:12:56
     * @version 0.1.5-RC2
     * @return $this
     */
    public function option(array $options, $selected = null)
    {
        foreach ($options as $key => $data) {
            print("<option value=\"{$key}\"");
            if ($key == $selected) {
                print(" selected=\"selected\"");
            }
            print(">{$data}</option>");
        }

        return $this;
    }

    /**
     * Used for opening any element not covered here
     * i.e.
     * in your view:
     * $this->open("div", "content", "col-xs-12", array('display' => "none"));
     * will generate the following HTML:
     * <div id="content" class="col-xs-12" style="display: none;">
     * The style attribute has been added for those
     * who use [primarily] jQuery to make web pages
     * dynamic
     *
     * @param string $element
     * @param string $id
     * @param mixed $class
     * @param mixed $style
     * @param boolean $selfClose
     * @author sbebbington
     * @date 30 Mar 2017 - 11:22:00
     * @version 0.1.5-RC2
     * @return $this
     */
    public function open($element, $id = null, $class = null, $style = null, $selfClose = false)
    {
        print("<{$element}");
        if (strlen($id) > 0) {
            $this->id($id);
        }
        if (is_string($class) || is_array($class)) {
            $this->addClass($class);
        }
        if (! empty($style) && (is_string($style) || is_array($style))) {
            $this->style($style);
        }
        $this->closeElement($selfClose);

        return $this;
    }

    /**
     * Used for closing an element such as a section
     * or a div etc...
     * i.e., in your view:
     * $this->close("div");
     * will generate the following HTML:
     * </div>
     *
     * @param string $element
     * @author sbebbington
     * @date 23 Jan 2017 - 10:07:49
     * @version 0.1.5-RC2
     * @return $this
     */
    public function close($element = null)
    {
        print("</{$element}>");

        return $this;
    }

    /**
     * For HTML elements H1 to H6 inclusive
     * the style attribute is added for use
     * with jQuery and such
     *
     * @param int $size
     * @param string $text
     * @param string $id
     * @param mixed $class
     * @param mixed $style
     * @author sbebbington
     * @date 30 Mar 2017 - 10:51:02
     * @version 0.1.5-RC2
     * @return $this
     */
    public function h(int $size, $text, $id = null, $class = null, $style = null)
    {
        if ($size < 1 || $size > 6) {
            $this->lib->debug("Please set your header size between 1 and 6, value {$size} is not allowed", true);
        }

        print("<h{$size}");
        if (strlen($id) > 0) {
            $this->id($id);
        }
        if (is_string($class) || is_array($class)) {
            $this->addClass($class);
        }
        if (! empty($style) && (is_string($style) || is_array($style))) {
            $this->style($style);
        }
        $this->closeElement(false);
        print("{$text}");
        $this->close("h{$size}");

        return $this;
    }

    /**
     * Opens a <script type="text/javascript" src="...">
     * tag
     *
     * @param string $src
     * @author sbebbington
     * @date 15 Feb 2017 - 13:45:35
     * @version 0.1.5-RC2
     * @return $this
     */
    public function javaScript($src = null)
    {
        print("<script type=\"text/javascript\"");
        print(strlen($src) ? " src=\"{$src}\">" : ">");

        return $this;
    }

    /**
     * Sets title attribute within an HTML element
     *
     * @param string $title
     * @author sbebbington
     * @date 28 Mar 2017 - 15:29:22
     * @version 0.1.5-RC2
     * @return $this
     */
    public function title($title = null)
    {
        print(" title=\"{$title}\"");

        return $this;
    }

    /**
     * This will allow style="display: none;"
     * and other such malevolence to be added
     * to your HTML
     *
     * @param mixed $style
     * @author sbebbington
     * @date 30 Mar 2017 - 10:52:43
     * @version 0.1.5-RC2
     * @return $this
     */
    public function style($style = null)
    {
        if (empty($style)) {
            $style = '';
        }
        if (is_array($style)) {
            $_style = '';
            foreach ($style as $key => $value) {
                $_style .= "{$key}: {$value};";
            }
            $style = $_style;
            unset($_style);
        }
        print(" style=\"{$style}\"");

        return $this;
    }
}
