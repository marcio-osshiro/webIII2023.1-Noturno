<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Noticia;
use App\Models\Categoria;
use App\Models\Autor;
use App\Http\Requests\NoticiaRequest;

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
     $noticia->data = now();
     $categorias = Categoria::orderBy('descricao')->get();
     $autores = Autor::orderBy('nome')->get();
     return view('frmNoticia', compact('noticia', 'categorias', 'autores'));
   }

   function salvar(NoticiaRequest $request) {

     if ($request->input('id') == 0) {
       $noticia = new Noticia();
     } else {
       $noticia = Noticia::find($request->input('id'));
     }
     $noticia->titulo = $request->input('titulo');
     $noticia->descricao = $request->input('descricao');
     $noticia->autor_id = $request->input('autor_id');
     $noticia->data = $request->input('data');
     $noticia->categoria_id = $request->input('categoria_id');
     $noticia->save();
     return redirect('noticia/listar')
     ->with(['msg' => "Notícia '$noticia->titulo' foi salva"]);
   }



   function salvarOld(Request $request) {
     $validated = $request->validate([
             'titulo' => 'required',
             'texto' => 'required',
             'data' => 'required',
             'autor_id' => 'required|exists:autor,id',
             'categoria_id' => 'required|exists:categoria,id'
         ]);

     if ($request->input('id') == 0) {
       $noticia = new Noticia();
     } else {
       $noticia = Noticia::find($request->input('id'));
     }
     $noticia->titulo = $request->input('titulo');
     $noticia->descricao = $request->input('descricao');
     $noticia->autor_id = $request->input('autor_id');
     $noticia->data = $request->input('data');
     $noticia->categoria_id = $request->input('categoria_id');
     $noticia->save();
     return redirect('noticia/listar');
   }

   function editar($id) {
     $noticia = Noticia::find($id);
     $categorias = Categoria::orderBy('descricao')->get();
     $autores = Autor::orderBy('nome')->get();
     return view('frmNoticia', compact('noticia', 'categorias', 'autores'));
   }

   function excluir($id) {
     $noticia = Noticia::find($id);
     $titulo = $noticia->titulo;
     $noticia->delete();

     return redirect('noticia/listar')
        ->with(['msg' => "Notícia $titulo foi excluída"]);
   }



}
