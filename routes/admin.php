<?php

use App\Http\Controllers\admin\AdminAuthController;
use App\Http\Controllers\Admin\AdminDashboardController;

Route::get('/admin/login',[AdminAuthController::class,'login']);


Route::middleware(['auth', 'role:admin'])->group(function () {
    // Routes accessible only by users with the 'admin' role
    Route::get('/admin/dashboard',[AdminDashboardController::class, 'index'])->middleware('auth')->name('admin.dashboard');
});