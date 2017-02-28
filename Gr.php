<?php

/**
 * 用于git代码提交
 */
class Gr {

    function __construct() {
        return $this;
    }


    function run() {
        $mess = shell_exec('git status');
        echo $mess;
    }

}

$gt = new Gr();
$gt->run();


?>
