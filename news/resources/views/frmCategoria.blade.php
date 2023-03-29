@extends('template')

@section('conteudo')
  <h1>Cadastro de Categoria</h1>
  <form action="{{url('categoria/salvar')}}" method="post">
    @csrf
    <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input readonly class="form-control" readonly type="text" name="id" value="{{$categoria->id}}">
    </div>
    <div class="mb-3">
      <label for="id" class="form-label">Descrição</label>
      <input class="form-control" type="text" name="descricao" value="{{$categoria->descricao}}">
    </div>
    <button class="btn btn-primary" type="submit" name="button">Salvar</button>
  </form>
@endsection
