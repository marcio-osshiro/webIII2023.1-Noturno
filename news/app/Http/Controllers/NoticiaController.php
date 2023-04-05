<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Noticia;
use App\Models\Categoria;

class NoticiaController extends Controller
{
  function listar() {
    $noticias = Noticia::orderByRaw('data, id')->get();
    return view('listagemNoticia',
                compact('noticias'));
   }

   function novo() {
     $noticia = new Noticia();
     $noticia->id = 0;
     $categorias = Categoria::orderBy('descricao')->get();
     return view('frmNoticia', compact('noticia', 'categorias'));
   }

   function salvar(Request $request) {
     if ($request->input('id') == 0) {
       $noticia = new Noticia();
     } else {
       $noticia = Noticia::find($request->input('id'));
     }
     $noticia->titulo = $request->input('titulo');
     $noticia->descricao = $request->input('descricao');
     $noticia->autor = $request->input('autor');
     $noticia->data = $request->input('data');
     $noticia->categoria_id = $request->input('categoria_id');
     $noticia->save();
     return redirect('noticia/listar');
   }

   function editar($id) {
     $noticia = Noticia::find($id);
     $categorias = Categoria::orderBy('descricao')->get();
     return view('frmNoticia', compact('noticia', 'categorias'));
   }

   function excluir($id) {
     $noticia = Noticia::find($id);
     $noticia->delete();
     return redirect('noticia/listar');
   }



}
