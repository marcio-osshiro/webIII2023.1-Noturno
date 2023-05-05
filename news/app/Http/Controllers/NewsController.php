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

    function noticia($id) {
      $noticiaAtual = Noticia::find($id);
      $categorias = Categoria::orderBy('descricao')->get();
      $noticiasCategoria = Noticia::where('categoria_id',
        $noticiaAtual->categoria->id)->orderBy('data', 'desc')->get();
      return view('noticia', compact('noticiaAtual', 'categorias', 'noticiasCategoria'));
    }
}
