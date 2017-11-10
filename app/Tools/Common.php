<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/10
 * Time: 16:05
 */
namespace App\Tools;

use Ramsey\Uuid\Uuid;

class Common {
    /**
     * 生成UUID
     */
    public static function getUuid()
    {
        $uuid = Uuid::uuid4();
        return $uuid->getHex();
    }
}