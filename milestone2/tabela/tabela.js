var botao = document.querySelector('#btn-calcular');
var tBody = document.querySelector('table#calculos tbody');

var valor1 = document.querySelector('#valor1');
var valor2 = document.querySelector('#valor2');

botao.addEventListener('click', function (event) {
    tBody.textContent = '';
    //soma
    var tr = document.createElement('tr');
    var td = document.createElement('td');
    td.textContent = valor1.value + ' + ' + valor2.value;
    tr.appendChild(td);
    var td = document.createElement('td');
    td.textContent = parseFloat(valor1.value) + parseFloat(valor2.value);
    tr.appendChild(td);
    tBody.appendChild(tr);
    
    //subtracao
    var tr = document.createElement('tr');
    var td = document.createElement('td');
    td.textContent = valor1.value + ' - ' + valor2.value;
    tr.appendChild(td);
    var td = document.createElement('td');
    td.textContent = parseFloat(valor1.value) - parseFloat(valor2.value);
    tr.appendChild(td);
    tBody.appendChild(tr);
    
    //multiplicacao
    var tr = document.createElement('tr');
    var td = document.createElement('td');
    td.textContent = valor1.value + ' * ' + valor2.value;
    tr.appendChild(td);
    var td = document.createElement('td');
    td.textContent = parseFloat(valor1.value) * parseFloat(valor2.value);
    tr.appendChild(td);
    tBody.appendChild(tr);
    
    //divisao
    var tr = document.createElement('tr');
    var td = document.createElement('td');
    td.textContent = valor1.value + ' / ' + valor2.value;
    tr.appendChild(td);
    var td = document.createElement('td');
    td.textContent = parseFloat(valor1.value) / parseFloat(valor2.value);
    tr.appendChild(td);
    tBody.appendChild(tr);
    
    //resto
    var tr = document.createElement('tr');
    var td = document.createElement('td');
    td.textContent = valor1.value + ' % ' + valor2.value;
    tr.appendChild(td);
    var td = document.createElement('td');
    td.textContent = parseFloat(valor1.value) % parseFloat(valor2.value);
    tr.appendChild(td);
    tBody.appendChild(tr);

});
