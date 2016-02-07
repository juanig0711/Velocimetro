//: Velocimetro automovil

import UIKit

enum Velocidades:Int {  // CREAMOS LA ENUMERACIÓN
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad:Velocidades
    
    init() {
        self.velocidad = .Apagado // inizializamos la variable velocidad con el valor de la enumeración "apagado".
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){ //creamos la función para modificar la velocidad.
        
        switch velocidad{
        case .Apagado:
            velocidad = .VelocidadBaja
            return (velocidad.rawValue, "Velocidad Baja")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (velocidad.rawValue, "Velocidad Alta")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        }
    }
}

var auto: Auto = Auto()         // CREAMOS UNA INSTNCIA DE LA CLASE AUTO
auto.velocidad                  


for i in 1.stride(through: 20, by: 1) {         // ITERAMOS 20 VECES LAS VELOCIDADES.
    var resultado = auto.cambioDeVelocidad()    // CREAMOS UNA VARIABLE QUE RECOJA LA FUNCIÓN DE LA CLASE
    print("Velocidad:",resultado.actual, "Velocidad en cadena:", resultado.velocidadEnCadena)
}
