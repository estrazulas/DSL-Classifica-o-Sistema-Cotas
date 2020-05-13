Distribuicao de vagas:

	TOTALVAGAS {
		
		Quadro de vagas: Nao

		Descricao: Total de vagas disponiveis
		
		Se divide em:
		
			CLAG {
		
			Quadro de vagas: Sim
			
			Descricao: Ampla Concorrencia
			
			Reserve: RESTANTE DAS VAGAS					
					
			} //clag,	
	
			EP {
		
			Quadro de vagas: Nao
			
			Descricao: Candidatos que estudaram em escola pulica
			
			Reserve: PercentualEP
			
			Se divide em:

				EP_RI {
				
					Quadro de vagas: Nao
			
					Descricao: Escola publica com renda inferior ou igual a 1.5 salarios minimos
			
					Reserve: 50%
					
					Se divide em:
					....