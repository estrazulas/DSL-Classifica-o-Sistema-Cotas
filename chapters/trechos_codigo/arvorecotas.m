function obtem_arvore_cotas($total_vagas, $modalidade=null, $vagasZeradas=null){
$vagas_cotas = array();
    
$resultado = obtem_info_cotas_pela_modalidade($modalidade);

$node = 0;
    
while ($item = mysql_fetch_array($resultado)){
    $cota = array();

$vagas_pai = get_vagas_pai($vagas_cotas,$item['parent'],$total_vagas);
        
    if ($node == 0 ){
            
        if ($item['arredondamento'] == 2){
            //sisu nodos folha, arredonda normal
$vagas_nodo_prioritario = round(($vagas_pai*$item['percentual'])/100);
        }else if ($item['arredondamento'] == 3)
        {
            //para sisu somente roundup sem alterar percentual
            $vagas_nodo_prioritario = ceil(($vagas_pai*$item['percentual'])/100);
        }
            $cota['vagas'] = $vagas_nodo_prioritario;
            $node++;
        }else{
            $cota['vagas'] = $vagas_pai - $vagas_nodo_prioritario;
            $node = 0;
        }
        $cota['parentid'] = $item['parent'];
        $cota['sigla'] = $item['sigla'];
        $cota['id_cota'] = $item['id_cota'];
        $cota['prioridade_transbordo'] = $item['prioridade_transbordo'];
        array_push($vagas_cotas, $cota);
    }
    
    return $vagas_cotas;
}

function calcula_cotas($total_vagas, $modalidade=null, $arvore_cotas = null, $tipoCota = null){
	$vagas = array();

	if($tipoCota != null && $tipoCota == "SEM"){
		return array("SEM" => $total_vagas);
	}

	if(in_array($modalidade, unserialize(C_MODALIDE_PCDPPI))){
		return calcula_cotas_mestrado($total_vagas, $modalidade);
	}
	
	if($arvore_cotas == null){
		$arvore_cotas = obtem_arvore_cotas($total_vagas,$modalidade);
	}

	foreach($arvore_cotas as $cota){
		/* as vagas efetivamente estao nas folhas */
		if (is_folha($arvore_cotas, $cota)){
			$vagas[$cota['sigla']] = $cota['vagas'];
		}
	}
	return $vagas;
}