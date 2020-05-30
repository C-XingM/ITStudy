<?php
// 允许 ityangs.net 发起的跨域请求
header("Access-Control-Allow-Origin: ityangs.net"); 

//如果需要设置允许所有域名发起的跨域请求，可以使用通配符 *
header("Access-Control-Allow-Origin: *");

$dsn = "mysql:host=127.0.0.1;dbname=means";//连接串
  $option = [PDO::MYSQL_ATTR_INIT_COMMAND => 
             "SET NAMES 'UTF8'"];//字符集控制
  $db = new PDO($dsn, 'root', '123456', $option);
  $rs = $db->query("Select * From project");
  $dataArr = $rs->fetchAll(); 
  echo json_encode($dataArr);
  $db = null;



?>