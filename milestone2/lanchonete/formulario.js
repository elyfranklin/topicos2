var botao = document.querySelector('.btn[type=submit]');
var tBody = document.querySelector('table#cardapio tbody');
var alvo = document.querySelector('#valor');

botao.addEventListener('click', function (event) {
    event.preventDefault();
    var pedido;
    pedido = "Nome do Cliente: "  + document.getElementById('cliente').value + '\n';
    pedido = pedido + "Bebida Escolhida: " + document.querySelector('[name=bebidas]:checked').value + "\n";
    pedido = pedido + "Comida Escolhida: ";
    var radios = document.getElementsByName('doces');

    for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
            // do whatever you want with the checked radio
            alert(radios[i].value);

            // only one radio can be logically checked, don't check the rest
            break;
        }
    }
    
    alert(pedido);
    
    // var quantidade = document.querySelector('#quantidade');
    // var item = document.querySelector('#item');
    // var linha = document.getElementById(item.value);
    // var preco = linha.lastElementChild.textContent;
    
    // preco = Number.parseFloat(preco.replace(',','.'));
    // alvo.textContent =  (preco * quantidade.value).toFixed(2).replace('.',',');
});
 
