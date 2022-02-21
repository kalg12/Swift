import UIKit

let age = 27;

let minValue = UInt8.min
let maxValue = UInt8.max
let minValue16 = UInt16.min
let maxValue16 = UInt16.max
let minValue32 = UInt32.min
let maxValue32 = UInt32.max
let minValue64 = UInt64.min
let maxValue64 = UInt64.max

//First float, if you do that, swuift made it automatically.
let f1 : Float = 3.141592653344312111

//If we want made a float, we should be use types. If we use double, we are precise.
let d1 : Double = 3.141592653344312111


let meaningOfLife = 42 //Int
let pi = 3.14159 // Double
let anotherPi = 3 + 0.14159

print(f1)
print(d1)
print(anotherPi)

//Numeric literal
let decimalInteger = 17 // 1*10 + 7
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let someNumber = 00000097.540

//We can put _ for best view on numbers.
let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000_000_000_1

//Some erros data type
//let cannotBeNegative = UInt8 = -1
//let tooBig: UInt8 = UInt8.max + 1

let twoThousand : UInt16 = 2_000
let one : UInt8 = 1
//let twoThousandAndOne = twoThousand + one //This not work
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.14159
let piNum = Double(three) + decimalNumber

let integerPi = Int(piNum) //We lost information if we convert to int some double value

//Type Alias let us change alias

typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max //UInt16.max
