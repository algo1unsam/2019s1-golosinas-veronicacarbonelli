import golosinas.*


object mariano {
	var golosinas =[]
	
	method golosinas() = golosinas
	
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	
	method comprar(golosina) {
		golosinas.add(golosina)
		
	}
	
	method desechar(golosina) {
		golosinas.remove(golosina)
		
	}
	
		method probarGolosinas() { 
		golosinas.forEach({golosina=>golosina.mordisco()})			
					
			 }
			 
		method hayGolosinaSinTACC(){
			return golosinas.any({golosina=>golosina.libreGluten()})
		}	
		
		method preciosCuidados(){
			return golosinas.all({golosina => golosina.precio()<=10})
		} 
		
		method golosinaDeSabor(unSabor){
		    return  golosinas.find({golosina => golosina.gusto()== unSabor})	
		}
		
		method golosinasDeSabor(unSabor){
		    return golosinas.filter({golosina => golosina.gusto()==unSabor})	
		}
		
		method sabores(){
			return golosinas.map({golosina => golosina.gusto()}).asSet()
		}
		
		method golosinaMasCara(){
			return golosinas
			.max{golosina =>golosina.precio()}
		}
		
		method pesoGolosina(){
			return golosinas
			.sum{golosina => golosina.peso()}
		}
		
				
		method golosinasFaltantes(golosinasDeseadas){
			return golosinasDeseadas.difference(golosinas)
		}
		
		method gustosFaltantes(gustosDeseados){
			return gustosDeseados.difference(golosinas.map{golosina=>golosina.gusto()})
		}
}

