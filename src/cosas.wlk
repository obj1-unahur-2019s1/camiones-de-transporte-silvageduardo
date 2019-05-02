object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}
object paqueteDeLadrillos{
	method peso(cantidadLadrillos){ return 2000 * cantidadLadrillos}
	method nivelPeligrosidad(){return 2}
}
object arenaAGranel{
	var	kg = 0
	method peso(peso){
		kg= peso
		return kg
	}
	method nivelPeligrosidad(){ return 1}
}
object bateriaAntiaerea{
	var misil = true
	method ponerMisil(){misil = true}
	method sacarMisil(){misil = false}
	method peso(){	return if (misil){300} else {200}	}
	method nivelPeligrosidad(){	return if (misil){100} else {0}	}
}
object contenedorPortuario{
	
	method nivelPeligrosidad(){}
	method peso(){}
}