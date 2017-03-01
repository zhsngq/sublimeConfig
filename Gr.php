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

	/**
	 * [$res 命令结果]
	 * @var [type]
	 */
	public $res;

	function __construct() {
		$this->runCommend('git status');
		preg_match('/["].*["]/', $this->res, $matches);
		$this->isCommit = !empty($matches);
		if ($this->isCommit) {
			$this->gitCommit();
		}
	}

	function runCommend($commend) {
		$this->res = shell_exec($commend);
		return $this;
	}

	function gitCommit() {
		$this->runCommend('git add .');
		$this->runCommend('git commit -m "test"');
		$this->runCommend('git push');
		var_dump($this->res);
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

	On branch master
	Your branch is up-to-date with 'origin/master'.
	Changes not staged for commit:
	(use "git add/rm <file>..." to update what will be committed)
	(use "git checkout -- <file>..." to discard changes in working directory)

	deleted:    gr.sh
	deleted:    t.sh

	no changes added to commit (use "git add" and/or "git commit -a")


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

$gt = new Gr();

?>
