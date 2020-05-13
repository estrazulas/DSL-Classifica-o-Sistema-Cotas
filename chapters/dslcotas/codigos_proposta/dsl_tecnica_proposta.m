Selecione a versao de configuracoes de cotas: 
     12.711-IFSC-003 
     	
Metodo de aprovacao de candidatos:
	aprova_Candidatos(listaCandidatos, quantidadeVagas)

Formato de lista de entrada: 
	CSV
	
Forma de retorno da lista de aprovados:
	JSON
	 	
Linguagem alvo:
	Java     
   
Mapeamento de campos da lista de candidatos:

	IDENTIFICACAO 		     => 'idCandidato'
	CLASSIFICACAO_GERAL      => 'classificacao'
	CANDIDATO_EP		     => 'cotaEscolaPublica'
	CANDIDATO_RI		     => 'cotaRendaInferior'
	CANDIDATO_PPI		  	 => 'cotaPPI'
	CANDIDATO_PCD 		  	 => 'cotaPCD'