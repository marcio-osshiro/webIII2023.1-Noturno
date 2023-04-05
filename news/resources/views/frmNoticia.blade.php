@extends('template')

@section('conteudo')
  <h1>Cadastro de Noticias</h1>
  <form action="{{url('noticia/salvar')}}" method="post">
    @csrf
    <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input readonly class="form-control" readonly type="text" name="id" value="{{$noticia->id}}">
    </div>
    <div class="mb-3">
      <label for="id" class="form-label">Título</label>
      <input class="form-control" type="text" name="titulo" value="{{$noticia->titulo}}">
    </div>
    <div class="mb-3">
      <label for="descricao" class="form-label">Descrição</label>
      <input class="form-control" type="text" name="descricao" value="{{$noticia->descricao}}">
    </div>
    <div class="mb-3">
      <label for="data" class="form-label">Data</label>
      <input class="form-control" type="date" name="data" value="{{$noticia->data}}">
    </div>
    <div class="mb-3">
      <label for="autor" class="form-label">Autor</label>
      <input class="form-control" type="text" name="autor" value="{{$noticia->autor}}">
    </div>
    <div class="mb-3">
      <label for="categoria_id" class="form-label">Categoria</label>
      <select class="form_control" name="categoria_id">
        @foreach($categorias as $categoria)
          <option {{ $categoria->id == $noticia->categoria_id ?'selected': ''}} value="{{$categoria->id}} ">{{$categoria->descricao}}</option>
        @endforeach
      </select>
    </div>

    <button class="btn btn-primary" type="submit" name="button">Salvar</button>
  </form>
@endsection
