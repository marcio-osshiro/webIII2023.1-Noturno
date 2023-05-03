<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use App\Models\Noticia;


class NewsController extends Controller
{
    function index() {
      $categorias = Categoria::orderBy('descricao')->get();

      $ultimasNoticias = Noticia::orderBy('data', 'desc')->limit(5)->get();

      return view('news', compact('categorias', 'ultimasNoticias'));
    }
}
