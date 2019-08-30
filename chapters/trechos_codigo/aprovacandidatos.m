function aprova_Candidatos($idProcesso, $idCurso, $situacoesdeClassificacao, $vagas)
{
    if(!is_array($situacoesdeClassificacao))
    {
        $situacoesdeClassificacao = array($situacoesdeClassificacao);
    }
    
    foreach($situacoesdeClassificacao as $situacaodeClassificacao)
    {
        if($vagas == 0)
        {
            //Para quando completar as vagas
            break;
        }
                
        $strSQL = 'SELECT can.idCandidato AS idCandidato
                 FROM candidatos can
                 WHERE can.idProcesso=\'' . $idProcesso . '\'
                 AND can.curso=\'' . $idCurso . '\'
                 AND can.situacao=\'CLA\'';
                
        switch($situacaodeClassificacao)
        {
            case 'CLAG':
                break;
            case 'AAEPRIPPI':
                $strSQL .= ' AND can.cotaEscolaPublica=\'S\'
                AND can.cotaRendaInferior=\'S\'
                AND can.cotaPPI=\'S\' ';
                break;
            case 'AAEPRINPPI':
                $strSQL .= ' AND can.cotaEscolaPublica=\'S\'
                AND can.cotaRendaInferior=\'S\'
                AND can.cotaPPI=\'N\' ';
                break;
            case 'AAEPRSPPI':
                $strSQL .= ' AND can.cotaEscolaPublica=\'S\'
                AND can.cotaRendaInferior=\'N\'
                AND can.cotaPPI=\'S\' ';
                break;
            case 'AAEPRSNPPI':
                $strSQL .= ' AND can.cotaEscolaPublica=\'S\'
                AND can.cotaRendaInferior=\'N\'
                AND can.cotaPPI=\'N\' ';
                break;
            default:
                return -1;
        }
        
        $strSQL .= ' ORDER BY can.classificacao ASC
        LIMIT 0,' . $vagas;
        
        $resultado = dbQuery($strSQL);
        
        while($linha = mysql_fetch_array($resultado))
        {
            $strSQL2 = 'UPDATE candidatos
            SET situacao=\'APV\',
            situacaodeClassificacao=\'' . $situacaodeClassificacao . '\'
            WHERE idCandidato=' . $linha['idCandidato'];
            
            dbQuery($strSQL2);
            
            $vagas--;
        }
    }

return $vagas;
}
