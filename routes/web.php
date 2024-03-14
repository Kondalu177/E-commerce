<?php

use Illuminate\Support\Facades\Route;
use App\Models\product;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    
    $data = product::all();
    return view('user.user', compact('data'));
});


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/user', [App\Http\Controllers\HomeController::class, 'user'])->name('user');
Route::get('/product', [App\Http\Controllers\AdminController::class, 'product'])->name('product');
Route::post('/uploadproduct', [App\Http\Controllers\AdminController::class, 'uploadproduct'])->name('uploadproduct');
Route::get('/getproduct', [App\Http\Controllers\AdminController::class, 'getproduct'])->name('getproduct');
Route::get('/deleteproduct/{id}', [App\Http\Controllers\AdminController::class, 'deleteproduct'])->name('deleteproduct');
Route::get('/updateproduct/{id}', [App\Http\Controllers\AdminController::class, 'updateproduct'])->name('updateproduct');
Route::post('/updateproductdata/{id}', [App\Http\Controllers\AdminController::class, 'updateproductdata'])->name('updateproductdata');
Route::post('/addcart/{id}', [App\Http\Controllers\HomeController::class, 'addcart'])->name('addcart');
Route::get('/showcart', [App\Http\Controllers\HomeController::class, 'showcart'])->name('showcart');
Route::post('/confrimorders', [App\Http\Controllers\HomeController::class, 'confrimorder'])->name('confrimorder');
Route::get('/getoreders', [App\Http\Controllers\AdminController::class, 'getoreders'])->name('getoreders');

Route::middleware(['auth','isAdmin'])->group (function () {

    Route::get('/dashboard', function () {
       return view('admin.index');
    });
 
 });