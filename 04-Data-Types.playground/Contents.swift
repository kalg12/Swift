import UIKit

let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = true

if isAged { //Solo entramos aquí si isAged == true
    print("Puedes entrar en la fiesta")
}else{ //Solo entramos aquí si isAged == false
    print("No puedes pasar a la fiesta")
}

var age:Int = 12

if age >= 18{
    print("Puedes entrar a la fiesta")
}else{
    print("No puedes entrar a la fiesta")
}

//Tuplas
let http404Error = (404, "Página no encontrada")

//Other example
let (statusCode, statusMessage) = http404Error;

print("El código del estado es \(statusCode)");
print("El mensaje del servidor es \(statusMessage)");

let (justStatusCode) = http404Error;
print("El código del estado es \(justStatusCode)")

print("El código del error es: \(http404Error.0) y el mensaje es \(http404Error.1)")

let http200Status = (statusCode:200, description:"OK")

print("El código del estado es: \(http200Status.statusCode) y el mensaje es: \(http200Status.description)")

//Tuplas Challenge

let me = (name:"Kevin Luciano", age:27, hobbie:"programar")
print("Hola soy \(me.name) y tengo \(me.age) años y me encanta \(me.hobbie)")


//Optionals and Nill
let possibleAge = "31" //Try to change 31 per Kevin we gonna get a "nil"
let converteAge = Int(possibleAge) //Int?

var serverResponseCode : Int? = 404
serverResponseCode = nil

//Optional
var surveyAnswer : String?

surveyAnswer = "42"

//print(surveyAnswer)
//print(surveyAnswer!)

//Force unwrapping de una variable optional
if converteAge != nil {
    print("La edad del usuario no es nula: \(converteAge!)")
}else{
    print("La edad del usuario es nula")
}

//Optional Binding
if let actualAnswer = surveyAnswer {
    //Al llegar aquí, surveyAnswer != nil
    print("El string \(surveyAnswer) tiene el valor \(actualAnswer)")
}else{
    //Al llegar aquí, surveyAnswer = nil
    print("El string \(surveyAnswer) es nill...")
}

if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber < 100
{
    print("\(firstNumber) < \(secondNumber) <100")
}

//Unwrap Implícito
let possibleString : String? = "Un string opcional"
let forcedString : String = possibleString!

let assumedString: String! = "Un string unwarepped de form implicita a partir de un optional"

let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!)
}

if let definitiveString = assumedString {
    print(definitiveString)
}

print(assumedString)

