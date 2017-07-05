var botao = document.querySelector('#btn-calcular');
var tBody = document.querySelector('table#cardapio tbody');
var alvo = document.querySelector('#valor');

botao.addEventListener('click', function (event) {
    var quantidade = document.querySelector('#quantidade');
    var item = document.querySelector('#item');
    var linha = document.getElementById(item.value);
    var preco = linha.lastElementChild.textContent;
    
    preco = Number.parseFloat(preco.replace(',','.'));
    alvo.textContent =  (preco * quantidade.value).toFixed(2).replace('.',',');
});
 
