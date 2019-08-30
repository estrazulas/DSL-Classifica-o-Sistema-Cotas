function calcula_vagasAcoesAfirmativas($totalVagas, $percentualNegros, $percentualEscolaPublica, $percentualPPIIBGE)
{
    $vagas = array();
    
    $multEscolaPublica = $percentualEscolaPublica/100;
    $multPPIIBGE = $percentualPPIIBGE/100;
    
    // vagas escola publica
    $vagas['AAEP'] = ceil($totalVagas * $multEscolaPublica);
    // restante para ampla concorrencia
    $vagas['CLAG'] = $totalVagas - $vagas['AAEP'];
    
    // vagas escola publica renda < 1.5 SM
    $vagas['AAEPRI'] = ceil($vagas['AAEP'] * 0.5);
    // restante para escola publica renda > 1.5 SM
    $vagas['AAEPRS'] = $vagas['AAEP'] - $vagas['AAEPRI'];
    
    // vagas escola publica renda < 1.5 SM - PPI
    $vagas['AAEPRIPPI'] = ceil($vagas['AAEPRI'] * $multPPIIBGE);
    // restante para escola publica renda < 1.5 SM - NPPI
    $vagas['AAEPRINPPI'] = $vagas['AAEPRI'] - $vagas['AAEPRIPPI'];
    
    // vagas escola publica renda > 1.5 SM - PPI
    $vagas['AAEPRSPPI'] = ceil($vagas['AAEPRS'] * $multPPIIBGE);
    // restante para escola publica renda > 1.5 SM - NPPI
    $vagas['AAEPRSNPPI'] = $vagas['AAEPRS'] - $vagas['AAEPRSPPI'];
    
    return $vagas;
}
