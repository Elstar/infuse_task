<?php

include "config.php";
include "classes/class.pdoHelper.php";

$uri = $_SERVER["HTTP_REFERER"];
$ip = $_SERVER["REMOTE_ADDR"];
$ua = $_SERVER["HTTP_USER_AGENT"];
$uaHash = md5($ua);
$ip = inet_pton($ip);

$time = time();

$existId = (int) pdoHelper::getInstance()->selectVar("SELECT id FROM views WHERE (ip_address=?) AND (user_agent_hash=?) AND (page_url=?)",
    [$ip, $uaHash, $uri]);
if ($existId) {
    pdoHelper::getInstance()->update("UPDATE views SET views_count=views_count+1, view_date=? WHERE id=$existId", [date("Y-m-d H:i:s")]);
} else {
    $values = [
        "ip_address" => $ip,
        "user_agent" => $_SERVER["HTTP_USER_AGENT"],
        "user_agent_hash" => $uaHash,
        "page_url" => $uri
    ];
    pdoHelper::getInstance()->insert('views', array_keys($values), $values);
}

print file_get_contents('img/banner.jpg');
