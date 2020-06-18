concept behavior Distribuicao {                                                                                              

  public void calculaDistribuicao() { 
  this.ancestor<concept = LeiDeCota>.categoriasSimuladas.clear; 
   
  if (this.categoria.categorias != null && !this.categoria.categorias.isEmpty) { 
    node<LeiDeCota> lei = this.ancestor<concept = LeiDeCota>; 
    Int arredondamentoParaCima = lei.arredondamento; 
    this.categoria.numeroVagas = 0; 
    calculaVagasCategoria(this.categoria, this.valorSimulacao, arredondamentoParaCima); 
     
  ...
  
  private void calculaVagasCategoria(node<CategoriaCota> categoria, int quantidadeVagas, Int formaArredondamento) { 
  
    if (categoria.parent.isInstanceOf(Distribuicao)) { 
      categoria.numeroVagas = quantidadeVagas; 
      
    } else if (categoria.parent.isInstanceOf(CategoriaCota)) { 
       
      Double percentual = getPercentualReserva(categoria.ancestor<concept = LeiDeCota>, categoria.reserva); 
       
      if (percentual != null) { 
        categoria.numeroVagas = getVagasArredondamento(quantidadeVagas, percentual, formaArredondamento); 
      } else { 
        if (categoria.reserva != null && categoria.reserva.getDetailedPresentation().equals("RESTANTE_VAGAS")) { 
          categoria.numeroVagas = categoria.parent:CategoriaCota.numeroVagas - categoria.parent:CategoriaCota.somaVagas(); 
     ...