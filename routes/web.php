<?php

use App\Http\Controllers\ClassDetailController;
use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/team', function () {
    return view('team');
})->name('team');
Route::get('/home', function () {
    return redirect('/admin/dashboard');
})->name('home');
Route::get('/contact', [ContactController::class, 'index'])->name('contact');
Route::post('/contact', [ContactController::class, 'submitContact'])->name('submitContact');
Route::get('/class', [ClassDetailController::class, 'index'])->name('class');
Route::get('/class/book/{class}', [ClassDetailController::class, 'book'])->name('class.book');
