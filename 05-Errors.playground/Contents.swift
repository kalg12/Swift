import UIKit

// Challenge
var cleanDishes = 1
var ingredientes = 10
var haveHungry: Bool = true

enum sandwichError: Error{
    case noCleanDishes
    case noIngredients
    case noHungry
}

func makeASandwich() throws{
    if cleanDishes < 1 {
        throw sandwichError.noCleanDishes
    }
    if ingredientes < 4 {
        throw sandwichError.noIngredients
    }
    if haveHungry == false {
        throw sandwichError.noHungry
    }
    print("Me hago un sandwich")
}


do{
    try makeASandwich()
    //Me como el sandwich
    print("Me como el sandwich")
}catch(sandwichError.noCleanDishes){
    //tengo platos limpios ...-> Lavar los platos
        print("lava 1 plato")
}catch (sandwichError.noIngredients){
    //tengo ingredientes -> Ir a hacer la compra
        print("compra ingredientes")
}catch (sandwichError.noHungry){
    //tengo hambre -> Esperar a tener hambre
        print("Esperar a tener hambre")
}

//Aserciones (debug) y Precondiciones (build)

let age = -5
//...aquí el código sigue.
//Con el siguiente código verificamos detalles de seguridad.
//assert(age>=0, "La edad de una persona no puede ser negativa")


//Ahora una precondición
precondition(age>=0, "La edad de una persona no puede ser negativa")


if age > 10 {
    print("Puedes subir a la montaña rusa")
}else if age >= 0 {
    print("Eres demasiado pequeño para subir a la montaña rusa")
}else{
    assertionFailure("La edad de una persona no puede ser negativa")
}


/*
 La función assert() te permite verificar el estado de tu programa en tiempo de ejecución y fallar si las cosas no son como deberían ser. Una de las características interesantes de assert() es que se elimina automáticamente cuando construyes tu aplicación en modo de lanzamiento, pero si no queres que eso suceda, si queres que tu aplicación se bloquee si algo está muy mal, entonces deberías usar la función precondition() en su lugar.
 */
