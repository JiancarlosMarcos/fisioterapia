<?php

use Illuminate\Support\Facades\Route;

Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    return view('admin/home');
})->name('dashboard');
