Configure abaixo todas as cotas que serao categorias de inscricao no "Quadro de vagas"

Composicao de opcoes de inscricao:

	Candidatos da Cota 'CLAG' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 '
	}
	
	Candidatos da Cota 'EP_RI_PPI_PCD' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 ',
		CANDIDATO_EP 	=> 'S',
		CANDIDATO_RI 	=> 'S',
		CANDIDATO_PPI 	=> 'S',		
		CANDIDATO_PCD 	=> 'S'
	},
	
	Candidatos da Cota 'EP_RI_PPI_NPCD' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 ',		
		CANDIDATO_EP 	=> 'S',
		CANDIDATO_RI 	=> 'S',
		CANDIDATO_PPI 	=> 'S',		
		CANDIDATO_PCD 	=> 'N'
	},
	
	Candidatos da Cota 'EP_RI_NPPI_PCD' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 ',		
		CANDIDATO_EP 	=> 'S',
		CANDIDATO_RI 	=> 'S',
		CANDIDATO_PPI 	=> 'N',		
		CANDIDATO_PCD 	=> 'S'
	},	
	
	Candidatos da Cota 'EP_RI_NPPI_NPCD' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 ',		
		CANDIDATO_EP 	=> 'S',
		CANDIDATO_RI 	=> 'S',
		CANDIDATO_PPI 	=> 'N',		
		CANDIDATO_PCD 	=> 'N'
	},		

	Candidatos da Cota 'EP_RS_PPI_PCD' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 ',		
		CANDIDATO_EP 	=> 'S',
		CANDIDATO_RI 	=> 'N',
		CANDIDATO_PPI 	=> 'S',		
		CANDIDATO_PCD 	=> 'S'
	},
	
	Candidatos da Cota 'EP_RS_PPI_NPCD' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 ',		
		CANDIDATO_EP 	=> 'S',
		CANDIDATO_RI 	=> 'N',
		CANDIDATO_PPI 	=> 'S',		
		CANDIDATO_PCD 	=> 'N'
	},
	
	Candidatos da Cota 'EP_RS_NPPI_PCD' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 ',		
		CANDIDATO_EP 	=> 'S',
		CANDIDATO_RI 	=> 'N',
		CANDIDATO_PPI 	=> 'N',		
		CANDIDATO_PCD 	=> 'S'
	},	
	
	Candidatos da Cota 'EP_RS_NPPI_NPCD' sao selecionados pelos seguintes campos {
		CLASSIFICACAO_GERAL => ' > 0 ',		
		CANDIDATO_EP 	=> 'S',
		CANDIDATO_RI 	=> 'N',
		CANDIDATO_PPI 	=> 'N',		
		CANDIDATO_PCD 	=> 'N'
	}