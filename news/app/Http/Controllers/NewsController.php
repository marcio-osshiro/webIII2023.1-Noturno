<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class NewsController extends Controller
{
    function index() {
      $categorias = Categoria::orderBy('descricao')->get();

      $ultimasNoticias = Noticia::getUltimasNoticias();

      return view("index", compact('categorias', 'ultimasNoticias'));
    }
}
