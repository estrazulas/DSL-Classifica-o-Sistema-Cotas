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
        }else {
            //outros processos do IFSC fora SISU
            $vagas_nodo_prioritario = ceil(($vagas_pai*altera_percentual_nodo_pai($item['percentual'], $item['id_cota'],$vagasZeradas))/100);

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
