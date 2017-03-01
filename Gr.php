<?php

/**
 * 用于git代码提交
 */
class Gr {

	/**
	 * [$isPull 是否更新]
	 * @var [type]
	 */
	public $isPull;

	/**
	 * [$isPull 是否提交]
	 * @var [type]
	 */
	public $isCommit;

	/**
	 * [$isPull 是否合并]
	 * @var [type]
	 */
	public $isMerge;

	function __construct() {
		$this->message = shell_exec('git status');
	}

	/**
	 * [gitStatus 判断git是否有需要提交的代码]

	On branch master
	Your branch is up-to-date with 'origin/master'.
	nothing to commit, working directory clean

	=============================================

	On branch master
	Your branch is up-to-date with 'origin/master'.
	Changes not staged for commit:
	(use "git add <file>..." to update what will be committed)
	(use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Gr.php

	 *
	 * @return [type] [description]
	 */
	function gitStatus() {
		$mess = shell_exec('git status');
		var_dump($mess);
	}

	function run() {

	}

}

// $gt = new Gr();
// $gt->run();
// echo "string";
// 测试正则匹配

$regex = '/HELLO/';
$str = 'hello word';

preg_match($regex, $str, $matches);

foreach ($matches as $key => $value) {
	echo "{$value}\n";
}

?>
