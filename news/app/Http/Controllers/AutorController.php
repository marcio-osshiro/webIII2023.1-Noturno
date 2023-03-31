<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Autor;

class AutorController extends Controller
{
  function listar() {
    $autores = Autor::orderBy('nome')->get();
    return view('listagemAutor',
                  compact('autores'));
  }

  function novo() {
    $autor = new Autor();
    $autor->id = 0;
    return view('frmAutor', compact('autor'));
  }

  function salvar(Request $request) {
    if ($request->input('id') == 0) {
      $autor = new Autor();
    } else {
      $autor = Autor::find($request->input('id'));
    }
    $autor->nome = $request->input('nome');
    $autor->email = $request->input('email');
    $autor->save();
    return redirect('autor/listar');
  }

  function editar($id) {
    $autor = Autor::find($id);
    return view('frmAutor', compact('autor'));
  }

  function excluir($id) {
    $autor = Autor::find($id);
    $autor->delete();
    return redirect('autor/listar');
  }


}
