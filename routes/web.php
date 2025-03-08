<?php

use App\Http\Controllers\CarritoController;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

//Controladores del producto
Route::get('/producto/index', [ProductoController::class, 'index'])->name('producto.index'); {};
Route::get('producto/create', [ProductoController::class, 'create'])->name('producto.create'); {};
Route::post('producto/create', [ProductoController::class, 'store'])->name('producto.store'); {};
Route::get('producto/show/{id}', [ProductoController::class, 'show'])->name('producto.show'); {};
Route::get('producto/edit/{id}', [ProductoController::class, 'edit'])->name('producto.edit'); {};
Route::put('producto/edit', [ProductoController::class, 'update'])->name('producto.update'); {};
Route::delete('producto/destroy/{id}', [ProductoController::class, 'destroy'])->name('producto.destroy'); {};

//Controladores del carrito
Route::get('/carrito/index', [CarritoController::class, 'index'])->name('carrito.index'); {};
Route::post('carrito/create/{id}', [CarritoController::class, 'store'])->name('carrito.store'); {};
Route::delete('carrito/destroy/{id}', [CarritoController::class, 'destroy'])->name('carrito.destroy'); {};
Route::put('carrito/edit', [CarritoController::class, 'update'])->name('carrito.update'); {};




Route::get('/index',[ProductoController::class, 'index'], function () {

    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
