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

}

$gt = new Gr();

?>
