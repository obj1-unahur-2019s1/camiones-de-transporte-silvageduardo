import cosas.*

class Camion {
	const property cosas = #{} // no es lista "[]" es conjunto "#{}"
	const pesoMaximo = 2500
	const tara = 1000
	
	method cargar(unaCosa) { cosas.add(unaCosa)	}
	method descargar(unaCosa){	cosas.remove(unaCosa)	}
	method pesoTotal(){	return cosas.sum({cosa => cosa.peso()}) + tara	}
	method excedidoDePeso(){ return (self.pesoTotal() > pesoMaximo )	}
	method objetosPeligrosos(nivel){
		return cosas.filter({ cosa =>
			cosa.nivelPeligrosidad()>nivel })
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return not cosas.any({ cosa => 	
			cosa.nivelPeligrosidad() >= nivelMaximoPeligrosidad
		}) 
//		return self.objetosPeligrosos(nivelMaximoPeligrosidad).isEmpty() 
	}
	method objetosMasPeligrososQue(cosa){
		return self.objetosPeligrosos(cosa.nivelPeligrosidad())
	}
}
