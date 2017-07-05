var botao = document.querySelector('#btn-calcular');


var data = document.querySelector('#data');
var extenso = document.querySelector('#extenso');
var meses = [
    'janeiro', 
    'fevereiro', 
    'março',
    'abril', 
    'maio', 
    'junho',
    'julho',
    'agosto',
    'setembro',
    'outubro',
    'novembro',
    'dezembro'
    ]
botao.addEventListener('click', function (event) {
     var res = data.value.split("/");
     var retorno = res[0] + ' de ' + meses[res[1] + 1] + ' de ' + res[2];
     extenso.textContent = retorno;
});
