function retorna_OrdemdePreenchimentodeVagasNaoOcupadas($situacaodeClassificacao){
    $ordem = array();
    switch($situacaodeClassificacao){
        case 'AAEPRIPPI':
            $ordem = array('AAEPRINPPI', 'AAEPRSPPI', 'AAEPRSNPPI', 'CLAG');break;
        case 'AAEPRINPPI':
            $ordem = array('AAEPRIPPI', 'AAEPRSPPI', 'AAEPRSNPPI', 'CLAG');break;
        case 'AAEPRSPPI':
            $ordem = array('AAEPRSNPPI', 'AAEPRIPPI', 'AAEPRINPPI', 'CLAG'); break;
        case 'AAEPRSNPPI':
            $ordem = array('AAEPRSPPI', 'AAEPRIPPI', 'AAEPRINPPI', 'CLAG');break;
        default:
            break;
    }
    return $ordem;
}