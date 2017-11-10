<?php

namespace App\Admin\Controllers;


use App\Models\User;
use App\Tools\Common;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class UserController extends Controller
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

            $content->header('用户管理');
            $content->description('用户列表');

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

            $content->header('用户管理');
            $content->description('用户编辑');

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

            $content->header('用户管理');
            $content->description('用户添加');
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
        return Admin::grid(User::class, function (Grid $grid) {


            $grid->username('用户名');
            $grid->phone('手机号码');
            $grid->email('邮箱');
            $grid->nickname('昵称');
            $grid->sex('性别');
            $grid->created_at('创建时间')->sortable();
            $grid->updated_at('更新时间');
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
        return Admin::form(User::class, function (Form $form) {

//            $form->display('id', 'ID');
            $form->hidden('uuid')->value(Common::getUuid());
            $form->text('username', '用户名')->rules('required|min:3');
            $form->text('nickname','昵称')->rules('max:10');
            $form->mobile('phone','手机号码')->options(['mask' => '999 9999 9999']);
            $form->password('password', '密码')->rules('required|min:6');
            $form->password('password_confirmation','确认密码')->rules('confirmed');
            $form->email('email','邮箱');
            $form->image('avatar')->removable();
//            $form->map('x', 'y', '地图');
//            $form->ckeditor('content');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
