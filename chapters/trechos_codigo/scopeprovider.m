concept behavior LeiDeCota {                     
  ...
  public Scope getScope(concept<> kind, node<> child) 
  overrides ScopeProvider.getScope { 
   
  nlist<> categorias = new nlist<>; 
   
  node<CategoriaCota> pai = this.distribuicao.categoria; 
   
  adicionaCategoriasRecursivo(pai, categorias); 
   
  nlist<Configuracao> configs = this.configuracoes; 
  categorias.addAll(configs); 
  ...
   
  return new ListScope(categorias) { 
    public string getName(node<> child) { 
      return child:INamedConcept.name; 
 ...