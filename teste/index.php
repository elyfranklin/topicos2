<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Inicio</title>
</head>
<body>
    <form action="processar.php" method="post">
        <label for="qtde">
            <input name="qtde" type="text" placeholder="QTDE" class="money">
        </label>
        <label for="valor">
            <input type="text" name="valor" placeholder="VALOR" class="money">
        </label>
        <label for="cnpj">
            <input type="text" name="cnpj" placeholder="CNPJ" class="cnpj">
        </label>
        <input type="submit" value="enviar" />
    </form>
    <script type="text/javascript" src="jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="jquery.mask.min.js"></script>
    <script type="text/javascript">
         $('.money').mask("#.##0,00", {reverse: true});
         $('.cnpj').mask('00.000.000/0000-00', {reverse: true});
    </script>
</body>
</html>