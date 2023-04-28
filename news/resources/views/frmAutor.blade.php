@extends('template')

@section('conteudo')
  <h1>Cadastro de Autor</h1>
  @if ($autor->imagem != "")
    <img style="width: 200px;height:200px;object-fit:cover" src="/storage/imagens/{{$autor->imagem}}">
  @endif

  <form action="{{url('autor/salvar')}}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
      <label for="id" class="form-label">ID</label>
      <input readonly class="form-control" readonly type="text" name="id" value="{{$autor->id}}">
    </div>
    <div class="mb-3">
      <label for="nome" class="form-label">Nome</label>
      <input class="form-control" type="text" name="nome" value="{{$autor->nome}}">
    </div>
    <div class="mb-3">
      <label for="email" class="form-label">E-mail</label>
      <input class="form-control" type="email" name="email" value="{{$autor->email}}">
    </div>
    <div class="mb-3">
      <label for="arquivo" class="form-label">Figura</label>
      <input class="form-control" type="file" name="arquivo" accept="image/*">
    </div>


    <button class="btn btn-primary" type="submit" name="button">Salvar</button>
  </form>
@endsection
