<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    //微信管理
    $router->resource('/wechat/index' ,WeChatController::class);
    //用户管理
    $router->resource('/user/index',UserController::class);

});
