@extends('templateNews')

@section('conteudo')
  <main>
    <h1>{{$noticiaAtual->categoria->descricao}}</h1>
    <h2>{{$noticiaAtual->titulo}}</h2>
    <h3>{{$noticiaAtual->autor->nome}} - {{$noticiaAtual->data->format('d/m/Y')}}</h3>
    <img style="width:100%;height:10rem;object-fit:cover" src="/storage/imagens/{{$noticiaAtual->imagem}}">
    <p>{{$noticiaAtual->descricao}}</p>
  </main>
  <ul>
    @foreach($noticiasCategoria as $noticia)
      <li><a href='{{url("news/noticia/$noticia->id")}}'>{{$noticia->titulo}} - {{$noticia->autor->nome}}({{$noticia->data->format('d/m/Y')}})</a></li>
    @endforeach
  </ul>
@endsection
