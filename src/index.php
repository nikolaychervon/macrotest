<?php

$dbh = new PDO('mysql:dbname=test;host=macro_mysql', 'root', 'test');

$sth = $dbh->prepare("SELECT * FROM `articles`");
$sth->execute();
$array = $sth->fetchAll(PDO::FETCH_ASSOC);
print_r($array);

echo 'HELLO WORLD, BITCH';
