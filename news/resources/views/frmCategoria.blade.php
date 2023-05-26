@extends('template')

@section('conteudo')
  <h1>Cadastro de Categoria</h1>
  @if ($categoria->imagem != "")
    <img style="width: 200px;height:200px;object-fit:cover" src="/storage/imagens/{{$categoria->imagem}}">
  @endif

  <form action="{{url('categoria/salvar')}}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="mb-3 @if($categoria->id==0) d-none @endif">
      <label for="id" class="form-label">ID</label>
      <input readonly class="form-control" readonly type="text" name="id" value="{{$categoria->id}}">
    </div>
    <div class="mb-3">
      <label for="id" class="form-label">Descrição</label>
      <input class="form-control" type="text" name="descricao" value="{{$categoria->descricao}}">
    </div>
    <div class="mb-3">
      <label for="arquivo" class="form-label">Figura</label>
      <input class="form-control" type="file" name="arquivo" accept="image/*">
    </div>


    <button class="btn btn-primary" type="submit" name="button">Salvar</button>
  </form>
@endsection
