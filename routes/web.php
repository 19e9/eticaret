<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\Frontend\CartController;
use App\Http\Controllers\Frontend\CheckoutController;
use App\Http\Controllers\Frontend\RatingController;
use App\Http\Controllers\Frontend\ReviewController;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Frontend\UserController;

//use App\Http\Controllers\Frontend\FrontendController;

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

//  Route::get('/', function () {
//      return view('welcome');
//  });


Route::get('/', [FrontendController::class,'index']);

Route::get('category', [FrontendController::class, 'category']);

Route::get('category/{slug}', [FrontendController::class, 'viewcategory']);

Route::get('category/{cate_slug}/{prod_slug}',[FrontendController::class, 'productview']);

Auth::routes();

Route::post('add-to-cart',[CartController::class,'addProduct']);

Route::post('delete-cart-item',[CartController::class,'deleteproduct']);

Route::post('update-cart',[CartController::class,'updatecart']);


Route::middleware(['auth'])->group(function () {
    Route::get('cart',[CartController::class,'viewcart']);
    Route::get('checkout',[CheckoutController::class,'index']);
    Route::post('place-order',[CheckoutController::class,'placeorder']);

    Route::get('my-order',[UserController::class,'index']);
    Route::get('view-order/{id}',[UserController::class,'view']);

    Route::post('add-rating',[RatingController::class,'add']);

    Route::get('add-review/{product_slug}/userreview',[ReviewController::class,'add']);

    Route::post('add-review', [ReviewController::class,'create']);

    Route::get('edit-review/{product_slug}/userreview',[ReviewController::class,'edit']);

    Route::put('update-review',[ReviewController::class,'update']);
});

Route::get('/home', [App\Http\Controllers\HomeController::class,'index'])->name('home');

Route::middleware(['auth', 'isAdmin'])->group(function () {
    //Route::get('/dashboard',[FrontendController::class,'index']);
    Route::get('/dashboard',function () {
        return view('admin.index');
    });

    Route::get('categories',[CategoryController::class,'index']);

    Route::get('add-category',[CategoryController::class,'add']);

    Route::post('insert-category',[CategoryController::class,'insert']);

    Route::get('edit-category/{id}', [CategoryController::class,'edit']);

    Route::put('update-category/{id}',[CategoryController::class,'update']);

    Route::get('delete-category/{id}',[CategoryController::class,'destroy']);

    Route::get('products',[ProductController::class,'index']);

    Route::get('add-products',[ProductController::class,'add']);

    Route::post('insert-product',[ProductController::class,'insert']);

    Route::get('edit-product/{id}',[ProductController::class, 'edit']);

    Route::put('update-product/{id}',[ProductController::class, 'update']);

   Route::get('delete-product/{id}',[ProductController::class,'destroy']);

     });
