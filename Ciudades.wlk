import elAlambiqueViajero1-AlanDomingues928.elAlambiqueViajero.*

object paris {
    method combustible()=75
   method llavero() = torreEiffel
   method ciudad() = true
   method restriccion(auto){
    auto.combustible() >= 75
   }
}
object bsas {
  method llavero() =mate 
  method combustible() = 25
  method restriccion(auto){
    auto.velocidad() >= 50
   }
}
object bagdad {
    method combustible()=25
  var llavero= bidonConPetroleo
  method llavero() = llavero
  method llavero(unLlavero) {llavero = unLlavero}
  method restriccion(auto){
   }
}
object lasVegas {
    var ciudadHomenajeada = bsas
    var homenajeActual = mate
    method combustible()= 10
    method homenaje() = homenajeActual
    method homenaje(unHomenaje) {homenajeActual = unHomenaje}
    method ciudadAHomenajear() = ciudadHomenajeada
    method ciudadAHomenajear(unPais) {ciudadHomenajeada = unPais}
    method restriccion(vehiculo) {
        ciudadHomenajeada.restriccion(vehiculo)
    }
}

object rusia {
  method llavero() =osoPolar 
  method combustible() = 25
  method restriccion(auto){
    auto.ganster() >= 10
   }
}

object osoPolar {
  method llavero() = true
}
object mate {
    var matelleno= true
    method llavero() = true
    method lleno() = matelleno
    method presidenteCopado(unMate) {matelleno = unMate}
}

object torreEiffel {
  method llavero() = true
}

object bidonConPetroleo {
  method llavero()= true
}

object armasDeDestruccion {
    method llavero() = true 
}

object jardinesColgantes {
    method llavero() = true
}