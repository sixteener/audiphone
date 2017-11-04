<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\WeChat;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Grid;
use Encore\Admin\Form;

class WeChatController extends Controller
{
    use ModelForm;
    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('微信公众号');
            $content->description('管理');

            $content->body($this->grid());
        });
    }
    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('微信公众号');
            $content->description('编辑');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('微信公众号');
            $content->description('添加');

            $content->body($this->form());
        });
    }
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(WeChat::class, function (Grid $grid) {

            $grid->id('id')->sortable();
            $grid->title("公众号名称");
            $grid->token("微信token");
            $grid->appid("公众号APPID");
            $grid->appsecret("公众号SECRETKEY");
            $grid->disableFilter();
            $grid->tools(function ($tools) {
                $tools->batch(function ($batch) {
                    $batch->disableDelete();
                });
            });
        });
    }
    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(WeChat::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
            $form->text('title', '微信公众号名称');
            $form->text('token', '验证token');
            $form->text('appid', '微信公众号APPID');
            $form->text('appsecret', '微信公众号SECRETKEY');
        });
    }

}
