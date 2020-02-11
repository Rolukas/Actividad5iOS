import UIKit
/*:
# Playground - Actividad 5
* Class y Struct
* Extension
* Optional
*/


/*: 
### Actividad Class y Struct
A) Diseñar la clase Persona que contenga dos metodos, el primero "Saludar" que reciba el parámetro nombre y regrese el mensaje el nombre mas el texto "mucho gusto", el segundo metodo "Caminar" que reciba como parámetro un tipo de dato Int y regrese un tipo de dato String indicando el numero de pasos caminados.
*/
class Persona{
    func Saludar(nombre: String) -> String {
        let message = "Mucho gusto \(nombre)"
        return message
    }
    
    func Caminar(pasos: Int) -> String{
        let message = "Pasos caminados: \(pasos)"
        return message
    }
}
//: B) Diseñar el struct "Pantalla" la cual recibirá como como parametros el ancho y alto de una pantalla como tipo de datos Int con un constructor, para inicializar la estructura.
struct Pantalla{
    var height: Int
    var width: Int
    
    init(width: Int, height: Int){
        self.height = height
        self.width = width
    }
}

/*:
### Extensions
A) Diseñar un extensión del tipo de dato Int que represente las horas y que pueda regresar los segundos correspondientes (puedes utilizar una función o una variable computada)
*/
extension Int{
    var seconds: Int{
        return self/60
    }
}

//: B) Diseñar una extensión del tipo de dato String que represente un día de la semana y regrese el numero correspondiente iniciando con Domingo = 1 y finalizando Sábado = 7
extension String{
    func day() -> Int {
        switch self{
            case "Lunes":
                return 2
            case "Martes":
                return 3
            case "Miércoles":
                return 4
            case "Jueves":
                return 5
            case "Viernes":
                return 6
            case "Sábado":
                return 7
            case "Domingo":
                return 1
            default:
                return 0
        }
    }
}
/*:
### Optionals
A) Diseñar una variable optional para recibir el tipo de dato Int en caso de que exista.
*/
    var Optional: Int?

//: B) Para la colección let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200] diseñar una variable opcional para recibir el valor de dias["DF"]
    let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]

    if let tmp = dias["DF"]{
        print("Correcto")
    } else {
        print("Incorrecto")
    }




