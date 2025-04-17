import Ciudades.*

object luke {
    var auto = elAlambiqueViajero
     method viajarA(ciudad) {
        ciudad.restriccion(auto){
            auto.realizarViaje()
        }
    }

    method cambioDeArma(){
        auto.combustible() >=50{
            auto.arma(cañones)
        }
        auto.combustible() <=50{
            auto.arma(municiones)
        }
    }

    method cantidadDeGanster(){
        auto.velocidad() >=40 || auto.modificado() >= true{
            auto.ganster(10)
        }
    }
    method convertir(autoACopiar){
        autoACopiar.cantidadDeGanster()
        autoACopiar.cambioDeArma()
    }
}


object elAlambiqueViajero {
    const velocidad = 50
    var recuerdo = true
    var combustible = 50
    
    method velocidad() = velocidad
    method combustible() = combustible
    method recuerdo() = recuerdo
    
    method combustible(cantidad) { combustible = cantidad }
    method recuerdo(unRecuerdo) { recuerdo = unRecuerdo }

    method realizarViaje(ciudad) {
        combustible = combustible - ciudad.combustible()
        recuerdo=ciudad.llavero()
    }

}
object cañones {
    method arma() = true
}
object municiones {
    method arma() = true
}
object elSuperChatarra {
    var arma= cañones
    var combustible= 0
    method arma() = arma
    method arma(unArma) {arma = unArma}
    method combustible() = combustible
    method combustible(cantidad) {combustible = cantidad}
    
}

object laAntiguallaBlindada {
    var ganster = 0
    var velocidad = 25
    var modificado = true
    method velocidad() = velocidad
    method ganster() = ganster
    method velocidad(rapido) {velocidad = rapido}
    method ganster(cantidad) {ganster = cantidad}
    method modificado()= modificado
}

object elSuperConvertible {
    var arma= cañones
    var velocidad= 0
    var modificado= true
    var ganster = 0
    var combustible = 0
    method arma() = arma
    method arma(unArma) {arma = unArma}
    method combustible() = combustible
    method combustible(cantidad) {combustible = cantidad}
    method velocidad() = velocidad
    method ganster() = ganster
    method velocidad(rapido) {velocidad = rapido}
    method ganster(cantidad) {ganster = cantidad}
  
}