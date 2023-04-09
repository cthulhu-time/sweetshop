<?php

use Illuminate\Support\Facades\Route;

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', [\App\Http\Controllers\ShopController::class, 'getHomePageView'])->name('home');

Route::get('/categories', [\App\Http\Controllers\ShopController::class, 'getCategoriesPageView'])->name('categories');

Route::get('/cart', [\App\Http\Controllers\ShopController::class, 'getCartView'])->name('cart');

Route::get('/{category}/', [\App\Http\Controllers\ShopController::class, 'getCategoryPageView'])->name('category');

Route::get('/{category}/{product}', [\App\Http\Controllers\ShopController::class, 'getSingleProductView'])->name('product');
