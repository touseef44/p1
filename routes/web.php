<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\frontend\DashBoardController;
use App\Http\Controllers\Frontend\FrontendController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SubscriptionController;
use App\Models\User;
use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/',[FrontendController::class,'index']);

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

//Route::get('/dashboard',[DashBoardController::class,'index'])->middleware(['auth', 'verified'])->name('dashboard');
Route::middleware(['userAuth'])->group(function () {
    // Your authenticated routes go here
    Route::get('/dashboard',[DashBoardController::class,'index'])->name('dashboard');

});

Route::middleware(['isAuth'])->group(function () {
    // Your authenticated routes go here
    Route::get('/subscription',[SubscriptionController::class,'loadsubscription'])->name('subscription');


});



// Route::middleware('auth')->group(function () {
//     Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
//     Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
//     Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
// });

require __DIR__.'/auth.php';

// Include admin routes
include __DIR__.'/admin.php';



// Route::resource('posts', PostController::class);
// Route::post('comments', [CommentController::class, 'store'])->name('comments.store');
// //practice
// Route::get('/user/profile',function(){
//     $user = User::with('profile')->find(2);
//     dd($user->profile);
// });


// user-trial-sub