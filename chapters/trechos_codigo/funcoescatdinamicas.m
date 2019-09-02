function retorna_OrdemdePreenchimentodeVagasNaoOcupadas($situacaodeClassificacao)
{

    $sql = "select sigla FROM cotas WHERE prioridade_transbordo >0 order by prioridade_transbordo";
    $res = dbQuery($sql);
    
    $siglasOrgem = array();
    
    while($linha = mysql_fetch_array($res))
    {
        array_push($siglasOrgem, $linha['sigla']);
    }
    
    return $siglasOrgem;
    
}

