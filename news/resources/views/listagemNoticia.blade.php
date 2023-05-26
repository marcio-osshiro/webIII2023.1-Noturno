@extends('template')

@section('conteudo')
  @if ($errors->any())
      <div class="alert alert-danger">
          <ul>
              @foreach ($errors->all() as $error)
                  <li>{{ $error }}</li>
              @endforeach
          </ul>
      </div>
  @endif



  <h1>Listagem de Notícias</h1>
  <a href="novo" class="btn btn-primary">Novo</a>
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Figura</th>
        <th>Titulo</th>
        <th>Autor</th>
        <th>Data</th>
        <th>Categoria</th>
        <th></th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      @foreach($noticias as $noticia)
          <tr>
            <td>{{$noticia->id}}</td>
            <td>
              @if ($noticia->imagem != "")
                <img style="width: 50px;" src="/storage/imagens/{{$noticia->imagem}}">
              @endif            </td>
            <td>{{$noticia->titulo}}</td>
            <td>{{$noticia->autor->nome}}</td>
            <td>{{$noticia->data->format('d/m/Y')}}</td>
            <td>{{$noticia->categoria->descricao}}</td>
            <td><a class='btn btn-primary' href='editar/{{$noticia->id}}'>+</a></td>
            <td><a class='btn btn-danger' href='excluir/{{$noticia->id}}'>-</a></td>
          </tr>
      @endforeach

   </tbody>
  </table>
  {{ $noticias->links() }}
@endsection
