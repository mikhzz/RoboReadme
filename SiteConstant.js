em Deployed Resorces/webapp/app/constant/site.constant.js
va ao final do array Site(var Site ) (so ir ao final do docunento) e adicione ao array
,
{
	posicao : {idsite},
	nome : '{nomesite(SNAKE_CASE)}',        
	descricao : '{nomeSite (legivel para usuario)}',
	link : 'http://www.{site do robo}',
	servico : '{servico(SNAKE_CASE)}',
	descricaoServico : 'Conferência de {servico}',
	campos : [ {    \\campos da entidade
		label : 'Código do Imóvel',
		field : 'codigoImovel'
	}, {
		label : '{nome campo (legivel para usuario)}',
		field : '{nome campo do codigo}'
	}
	],
	header : [ { \\campos do header q vc usa, se n usar remover!
		label : 'Parcela(s)',
		field : 'parcelas'
	}, {
		label : 'Buscar PDF(s) (s/n)',
		field : 'pdf'
	} ],
	documentacao : 'documentacao/{nomesite}/{servico}{nomesite}.html'
}
