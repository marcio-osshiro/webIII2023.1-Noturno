<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\AutorController;
use App\Http\Controllers\NoticiaController;
use App\Http\Controllers\NewsController;

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

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    // Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    // Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    // Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/categoria/listar', [CategoriaController::class, 'listar']);
    Route::get('/categoria/novo', [CategoriaController::class, 'novo']);
    Route::get('/categoria/editar/{id}', [CategoriaController::class, 'editar']);
    Route::get('/categoria/excluir/{id}', [CategoriaController::class, 'excluir']);
    Route::post('/categoria/salvar', [CategoriaController::class, 'salvar']);
    Route::get('/categoria/relatorio', [CategoriaController::class, 'relatorio']);

    Route::get('/autor/listar', [AutorController::class, 'listar']);
    Route::get('/autor/novo', [AutorController::class, 'novo']);
    Route::get('/autor/editar/{id}', [AutorController::class, 'editar']);
    Route::get('/autor/excluir/{id}', [AutorController::class, 'excluir']);
    Route::get('/autor/mensagem/{id}', [AutorController::class, 'mensagem']);
    Route::post('/autor/salvar', [AutorController::class, 'salvar']);
    Route::post('/autor/mensagem', [AutorController::class, 'enviarMensagem']);

    Route::get('/noticia/listar', [NoticiaController::class, 'listar']);
    Route::get('/noticia/novo', [NoticiaController::class, 'novo']);
    Route::get('/noticia/editar/{id}', [NoticiaController::class, 'editar']);
    Route::get('/noticia/excluir/{id}', [NoticiaController::class, 'excluir']);
    Route::post('/noticia/salvar', [NoticiaController::class, 'salvar']);

    Route::get('/', function () {
        return view('index');
    });
});

Route::get('/news', [NewsController::class, 'index']);
Route::get('/news/noticia/{id}', [NewsController::class, 'noticia']);
Route::get('/news/categoria/{id}', [NewsController::class, 'categoria']);

require __DIR__.'/auth.php';
