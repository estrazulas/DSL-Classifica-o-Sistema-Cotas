@RestController
public class CalculoCotasController {
...
	@GetMapping("/dsl-cotas/quadro-vagas/{versao}/{quantidade}")
	public Map<String, Integer> getQuadroVagas(@PathVariable String versao, @PathVariable Integer quantidade) {
    ...
	}
	@PostMapping("/dsl-cotas/aprova-candidatos/{versao}/{quantidade}")
	public List<Candidato> aprovaCandidatos(@PathVariable String versao, @PathVariable Integer quantidade,
	    @RequestBody List<Candidato> candidatos)  {
       ...
	 }
	@GetMapping("/dsl-cotas/ordem-prioridade/{versao}/")
	public Map<String, String> retornaOrdemPrioridade(@PathVariable String versao) {
        ...