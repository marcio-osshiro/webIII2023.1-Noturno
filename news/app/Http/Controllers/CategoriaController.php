<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Categoria;
use Illuminate\Support\Facades\Storage;
use Barryvdh\DomPDF\Facade\Pdf;

class CategoriaController extends Controller
{
    //
    function listar() {
      $categorias = Categoria::orderBy('descricao')->get();
      return view('listagemCategoria',
                    compact('categorias'));
    }

    function novo() {
      $categoria = new Categoria();
      $categoria->id = 0;
      $categoria->imagem = "";
      $categoria->descricao = "";
      return view('frmCategoria', compact('categoria'));
    }

    function salvar(Request $request) {
      if ($request->input('id') == 0) {
        $categoria = new Categoria();
      } else {
        $categoria = Categoria::find($request->input('id'));
      }
      if ($request->hasFile('arquivo')) {
          $file = $request->file('arquivo');
          $upload = $file->store('public/imagens');
          $upload = explode("/", $upload);
          $tamanho = sizeof($upload);
          if ($categoria->imagem != "") {
            Storage::delete("public/imagens/".$categoria->imagem);
          }
          $categoria->imagem = $upload[$tamanho-1];
      }

      $categoria->descricao = $request->input('descricao');
      $categoria->save();
      return redirect('categoria/listar');
    }

    function editar($id) {
      $categoria = Categoria::find($id);
      return view('frmCategoria', compact('categoria'));
    }

    function excluir($id) {
      $categoria = Categoria::find($id);
      if ($categoria->imagem != "") {
        Storage::delete("public/imagens/".$categoria->imagem);
      }
      try {
        $categoria->delete();
      } catch(\Exception $e) {
        return redirect('categoria/listar')->with(['msg' => 'Categoria não pode ser excluída']);
      }
      return redirect('categoria/listar')->with(['msg'=> 'Categoria excluída']);

    }

    function relatorio() {
      $categorias = Categoria::orderBy('descricao')->get();
      $pdf = Pdf::loadView('relatorioCategoria', compact('categorias'));
      return $pdf->download('categorias.pdf');
    }
}
