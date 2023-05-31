<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Autor;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Mail;
use App\Mail\AutorMensagem;

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
    if ($request->hasFile('arquivo')) {
        $file = $request->file('arquivo');
        $upload = $file->store('public/imagens');
        $upload = explode("/", $upload);
        $tamanho = sizeof($upload);
        if ($autor->imagem != "") {
          Storage::delete("public/imagens/".$autor->imagem);
        }
        $autor->imagem = $upload[$tamanho-1];
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
    if ($autor->imagem != "") {
      Storage::delete("public/imagens/".$autor->imagem);
    }
    $autor->delete();
    return redirect('autor/listar');
  }

  function mensagem($id) {
    $autor = Autor::find($id) ;
    return view('frmMensagem', compact('autor'));

  }

  function enviarMensagem(Request $request) {
    $id = $request->input('id');
    $mensagem = $request->input('mensagem');
    $autor = Autor::find($id) ;
    Mail::to($autor->email)->send(new AutorMensagem($autor, $mensagem));
    return redirect('autor/listar');
  }


}
