<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Noticia;
use App\Models\Categoria;
use App\Models\Autor;
use App\Http\Requests\NoticiaRequest;
use Illuminate\Support\Facades\Storage;


class NoticiaController extends Controller
{
  function listar() {
    $noticias = Noticia::orderByRaw('data, id')->paginate(5);
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
     if ($request->hasFile('arquivo')) {
         $file = $request->file('arquivo');
         $upload = $file->store('public/imagens');
         $upload = explode("/", $upload);
         $tamanho = sizeof($upload);
         if ($noticia->imagem != "") {
           Storage::delete("public/imagens/".$noticia->imagem);
         }
         $noticia->imagem = $upload[$tamanho-1];
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
     if ($noticia->imagem != "") {
       Storage::delete("public/imagens/".$noticia->imagem);
     }

     $noticia->delete();

     return redirect('noticia/listar')
        ->with(['msg' => "Notícia $titulo foi excluída"]);
   }



}
