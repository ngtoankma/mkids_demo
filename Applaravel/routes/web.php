<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use App\User;

Route::get('admin/login','userController@getLoginAdmin');
Route::post('admin/login','userController@postLoginAdmin');
Route::get('admin/logout','userController@getLogoutAdmin');


Route::group(['prefix' => 'home'], function() {
    //
        Route::get('/','homeController@getHome');
        Route::get('info','homeController@getInfo');
        Route::get('list','homeController@getList');
        Route::get('lienhe','homeController@getLienHe');
        Route::get('noti','homeController@getNoti');
        Route::get('menu','homeController@getMenu');
        Route::get('menu/{id}','homeController@getInfoMenu');

        Route::get('noti_info/{id}','homeController@getNotiInfo');

        Route::get('news/{id}','homeController@getNews');
        Route::post('news/{id}','homeController@postNews');

});

// Route::get('chuyen-huong',function(){
//     return redirect()->route('login');
// });


Route::get('thu', function() {
  $User =A;
   
    echo $User;
});
   // $user_class_ref= App\user_class_ref();
   //  $user_class_ref->id=1;
   //  $user_class_ref->user_id=1;
   //  $user_class_ref->class_id=1;

   //  $user_class_ref->sav


Route::group(['prefix' => '/','middleware'=>'checkLogin'], function() {
    //
    Route::group(['prefix' => 'home'], function() {
            // Route::get('/','homeController@getHome')->name('login');
        
        
            // Route::get('/','homeController@getHome')->name('home');

           
    
    
    
 });
});

Route::group(['prefix' => '/','middleware'=>'adminLogin'], function() {



    Route::get('/', function () {
        return view('admin/layout/content');
    });
    
    Route::group(['prefix'=>'admin'], function() {
        Route::group(['prefix' => 'user'], function() {
            Route::get('list_user/{type?}', 'userController@getListUser');
            Route::get('edit_user/{id}', 'userController@getEditUser');
            Route::post('edit_user/{id}', 'userController@postEditUser');
            Route::get('add_user', 'userController@getAddUser');
            Route::post('add_user', 'userController@postAddUser');
            Route::get('xoa/{id}', 'userController@getxoa');
            Route::get('check/{id}', 'userController@getCheck');

            Route::get('info_user/{id}', 'userController@getInfo');
    
        });
        Route::group(['prefix' => 'member'], function() {
            Route::get('list_member', 'memberController@getListMember');
            Route::get('edit_member/{id}', 'memberController@getEditMember');
            Route::post('edit_member/{id}', 'memberController@postEditMember');
            Route::get('add_member', 'memberController@getAddMember');
            Route::post('add_member', 'memberController@postAddMember');
            Route::get('xoa/{id}', 'memberController@getxoa');
    
    
        });
        Route::group(['prefix' => 'classSchool'], function() {
            Route::get('list_class', 'classController@getListClass');
            Route::get('userClass/{id}/{type?}', 'classController@getUserClass');
            //Route::get('userClass/{id}/{$type}', 'classController@getMemberClass');
    
            Route::get('edit_class/{id}', 'classController@getEditClass');
            Route::post('edit_class/{id}', 'classController@postEditClass');
            Route::get('add_class', 'classController@getAddClass');
            Route::post('add_class', 'classController@postAddClass');
            Route::get('xoa/{id}', 'classController@getxoa');
            
    
    
        });
        Route::resource('group', 'groupController');
    
        Route::group(['prefix' => 'menu'], function() {
            Route::get('list_menu', 'menuController@getListMenu');
            Route::get('delete', 'menuController@getDelete');
            Route::get('info_menu/{id}', 'menuController@getEditMenu');
            Route::post('info_menu/{id}', 'menuController@postEditMenu');
            Route::get('add_menu', 'menuController@getAddMenu');
            Route::post('add_menu', 'menuController@postAddMenu');
            Route::get('xoa/{id}', 'menuController@getxoa');
    
        });
    
        Route::group(['prefix' => 'monan'], function() {
            Route::get('list_menu', 'thucdonController@getListMenu');
            Route::get('delete', 'thucdonController@getDelete');
            Route::get('edit_list_menu/{id}', 'thucdonController@getEditMenu');
            Route::post('edit_list_menu/{id}', 'thucdonController@postEditMenu');
            Route::get('add_list_menu', 'thucdonController@getAddMenu');
            Route::post('add_list_menu', 'thucdonController@postAddMenu');
            Route::get('xoa/{id}', 'thucdonController@getxoa');
    
        });
    
        Route::group(['prefix' => 'comment'], function() {
            Route::get('list_comment', 'commentController@getListComment');
            Route::get('xoa/{id}', 'commentController@getxoa');
            Route::get('details_comment/{id}', 'commentController@getDetailsComment');
            Route::post('details_comment/{id}', 'commentController@postListComment');
    
    //Notification/list_noti
        });
        Route::group(['prefix' => 'Notification'], function() {
            Route::get('list_noti', 'notiController@getListNoti');
            Route::get('edit_noti/{id}', 'notiController@getEditNoti');
            Route::post('edit_noti/{id}', 'notiController@postEditNoti');
            Route::get('add_noti', 'notiController@getAddNoti');
            Route::post('add_noti', 'notiController@postAddNoti');
            Route::get('xoa/{id}', 'notiController@getxoa');
            Route::get('send_noti/{id}', 'notiController@getSendNoti');
            Route::post('send_noti/{id}', 'notiController@postSendNoti');
            
    
    
        });
        Route::group(['prefix' => 'news'], function() {
            Route::get('list_news', 'newsController@getListNews');
            Route::get('info_news/{id}', 'newsController@getInfoNews');
            Route::get('edit_news/{id}', 'newsController@getEditNews');
            Route::post('edit_news/{id}', 'newsController@postEditNews');    
            Route::get('add_news', 'newsController@getAddNews');
            Route::post('add_news', 'newsController@postAddNews');
            Route::get('xoa/{id}', 'newsController@getxoa');
    
    
        });
    
        Route::group(['prefix' => 'layout'], function() {
            Route::get('content', 'contentController@getContent');
        });
    
        // admin/login/login
        Route::group(['prefix' => 'layout'], function() {
        Route::get('content', function () {
        return view('admin/layout/content');
        });
        });
    });
    
    
    });
    




