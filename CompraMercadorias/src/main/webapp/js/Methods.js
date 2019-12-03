x = produtos()
window.preco = 0;
function adicionar(e){

		e.preventDefault();
		var id = document.getElementById("idProd").value;	
		const URL_TO_FETCH = 'getProduto?id=' + id;
		 fetch(URL_TO_FETCH, { 
		  method: 'get' 
		  })
		.then(function(response) { 
		  response.json()

		  .then(function(result){ 
		  	console.log(result);
		    if(result != null){ 
		   		if(x.appendProduct(result)){
			    	appendTabela(result);
			    	document.getElementById("ttlProdutos").value = "";
			    } else { alert("Produto não encontrado");}	
		    } 
		  })
		})
		.catch(function(err) { console.error(err);});
}

function adicionarModal(id){
		const URL_TO_FETCH = 'getProduto?id=' + id;
		 fetch(URL_TO_FETCH, { 
		  method: 'get' 
		  })
		.then(function(response) { 
		  response.json()
		  .then(function(result){ 
		    console.log(result);
		    setModal(result); 
		  })
		})
		.catch(function(err) { console.error(err); });
	}

function setModal(produto){
	document.getElementById("prodId").value = produto.id;
	document.getElementById("nome").value = produto.nome;
	document.getElementById("marca").value = produto.marca;
	document.getElementById("quantidade").value = produto.quantidade;
	document.getElementById("unidade").value = produto.unidade;
	document.getElementById("preco").value = produto.preco;
	document.getElementById("desc").value = produto.descricao;
}

function clearModal(){
	document.getElementById("prodId").value = "";
	document.getElementById("nome").value = "";
	document.getElementById("marca").value = "";
	document.getElementById("quantidade").value = "";
	document.getElementById("unidade").value = "";
	document.getElementById("preco").value = "";
	document.getElementById("desc").value = "";
}


function appendTabela(produto){
  var table = document.getElementById("carrinho");
  var row = table.insertRow(-1);
  var cellId = row.insertCell(0);
  var cellPNome = row.insertCell(1);
  var cellMarca = row.insertCell(2);
  var cellQntd = row.insertCell(3);
  var cellUn = row.insertCell(4);
  var cellPre = row.insertCell(5);
  var cellDesc= row.insertCell(6);
console.log(produto);
  cellId.innerHTML = produto.id;
  cellPNome.innerHTML = produto.nome;
  cellMarca.innerHTML = produto.marca;
  cellQntd.innerHTML = document.getElementById("qnt").value;
  cellUn.innerHTML = produto.unidade;
  cellPre.innerHTML = produto.preco.toFixed(2);
  cellDesc.innerHTML = produto.descricao;
}

function remover(id){
	console.log('Remover?id='+ id)
	window.location.href = 'Remover?id='+ id;
}

function openModal(modalId, prodId){
	adicionarModal(prodId);
	document.getElementById(modalId).classList.add('is-active')
}

function closeModal(modalId){
	document.getElementById(modalId).classList.remove('is-active')
	clearModal();
}

function produtos(){
	const produtos = []
	const ttlProdutos = 0
	function getProducts(){
		return produtos
	}
	function appendProduct(prod){
		arr =  x.getProducts();
		qnt = document.getElementById("qnt").value;
		const { length } = arr;
		const found = arr.some(el => el.id === prod.id);
		if(found){ 
			alert("Produto já adicionado");
		} else {
			if (qnt <= prod.quantidade){
				produtos.push(prod);
				console.log(produtos);
				window.preco += prod.quantidade * prod.preco;
				document.getElementById("ttlProdutos").innerHTML = "Itens carrinho: "+ produtos.length
				document.getElementById("ttlCarrinho").innerHTML = "Total carrinho: "+ window.preco
				console.log(prod.quantidade);
				return produtos;
			} else { alert("Quantidade indisponível (Quantidade em estoque: " +prod.quantidade+")");}
		}
	}
	return {
		getProducts,
		appendProduct
		}	
}

function comprar(){

	if(x.getProducts().length > 0){
		var prods = []
		var form = document.getElementById("form");
		var input = document.createElement("input");

		x.getProducts().forEach((prod) => {
			prods.push(prod.id, parseInt(prod.quantidade))
		})
		
		input.type = "hidden"
		input.name = "listProd"
		input.value = JSON.stringify(prods);
		form.appendChild(input)
		form.submit()
		alert("Compra feita");

	} else { alert("Não existem itens no carrinho");}
}