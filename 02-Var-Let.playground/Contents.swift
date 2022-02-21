import UIKit

let maximumNumberOfLoginAttempts=3;

var currentLoginAttempt=0;

let stringName = "Kevin";

let stringLastName = "Luciano";

print("The constant's value is: ", maximumNumberOfLoginAttempts);
print("The variable's value is: ", currentLoginAttempt);
print(stringName + " " + stringLastName);


//We can use type annotations, example:

var welcomeMessage : String;

welcomeMessage = "Hello, how are you? This is Kevin";

//Colors example; we can use many names for one variable

var red, blue, white : Double;

//Print function

print("El número de login actual es: \(currentLoginAttempt) de un total disponible de: \(maximumNumberOfLoginAttempts)")
