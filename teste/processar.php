<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Processar</title>
</head>
<body>
    <?php
    $qtde =  $_POST['qtde'];
    $valor =  $_POST['valor'];
    $cnpj =  $_POST['cnpj'];
    echo $valor;
    echo '<br />';
    echo $cnpj;

    echo '<br />';
    // $valor =  number_format($qtde , 2, '.','');
    // Notação Inglesa com separador de milhar
    
    $valor = str_replace(array(',','.'), "", $valor);
    $qtde = str_replace(array(',','.'), "", $qtde);
    $cnpj = str_replace(array(',','.','/','-'), "", $cnpj);
    $valor = number_format($valor/100, 2, '.', '');
    $qtde = number_format($qtde/100, 2, '.', '');
    echo $valor;

    echo '<br />';
    echo $cnpj;
    echo '<br />';
    echo $qtde;
    echo '<br />';
    echo $valor;
    echo '<br />';
    $produto = $valor * $qtde;
    
    echo number_format($produto, 2, ',','');
    ?>
    
</body>
</html>