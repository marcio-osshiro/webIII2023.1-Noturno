<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class CategoriaController extends Controller
{
    //
    function listar() {
      $categorias = DB::select('SELECT * FROM categoria ORDER BY descricao');
      return view('listagemCategoria',
                    compact('categorias'));
    }
}
