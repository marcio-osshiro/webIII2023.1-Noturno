<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body class="container">
    <h1>Listagem de Categorias</h1>
    <a href="novo" class="btn btn-primary">Novo</a>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <th>ID</th>
          <th>Descrição</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
      <?php
        foreach ($categorias as $categoria) {
            echo "
            <tr>
              <td>$categoria->id</td>
              <td>$categoria->descricao</td>
              <td><a class='btn btn-primary' href='editar/$categoria->id'>+</a></td>
              <td><a class='btn btn-danger' href='excluir/$categoria->id'>-</a></td>
            </tr>
            ";
        }

       ?>

     </tbody>
    </table>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>
