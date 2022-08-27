<?php

class Connection{

	public function connect(){

		$link = new PDO("mysql:host=localhost;dbname=pos-english", "root", "221467");

		$link -> exec("set names utf8");

		return $link;
	}

}