//: Playground - noun: a place where people can play
//Swift is
//1. Case Sensitive
//2. Type Inference
//3. Object Oriented/Protocol Oriented

import UIKit

//Declaring Constants and Variables
let a = 20
var b = 0
var c = "Welcome"

//Declare multiple Constants or Multiple Variables
var x = 0, y = 1.5, z = "String Test"
//var p, q, r = 0 //Does not work

//Type Annotations
var greetings: String
greetings = "Hai"

//Define multiple related variables of the same type on a single line
var p, q, r: Int
//Assign values to the declared Variables
p = 0
q = 5
r = 4

//Naming Constants and Variables
//Below Works
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

//Naming a Constant and Variable with the same name
let constantVariable = 0
//var constantVariable = 0  - Will show an Error

//Updating the values of an Variable
var greetings1 = "Hello!"
greetings1 = "Bonjour!"

//Updating the values of an Constant
let streetName = "Ashford"
//languageName = "Atlanta Road"

//Printing
print(streetName)
print("The value of street Name is \(streetName)")

//This is how to Comment

/*Muliple line comment -  Line 1
 Muliple line comment -  Line 2*/

/*Muliple line comment -  First Line
 /*Muliple line comment inside another
 Muliple line comment*/
 Muliple line comment -  Last Line*/

//Semicolons
//Need Semicolons for multiple commands on the same line
let emojiPictures = "🐱😅😆😆😅😆🖐"; print(emojiPictures)

//Integers
//signed (positive, zero, or negative) or unsigned (positive or zero)
var intExample1 = 0
var intExample2 = 1
var intExample3 = +0
var intExample4 = -1

//Floating-Point Numbers
var intExample5 = 3.2
var intExample6 = -1.5
var intExample7 = +0.7
var intExample8: Float = 3.123456789 //Float can have a maximum of 6 Decimal Digits, so this shrinks to 3.123457
var intExample9: Double = 2.123456789123456789 //Double can have a maximum of 15 Decimal Digits, so this shrinks to 2.123456789123457

//Swift is a type-safe language. A type safe language encourages you to be clear about the types of values your code can work with, Swift uses type inference to work out the appropriate type

let myAge1 = 40 //Swift infers this as Int
let myAge2 = 3.12123 //Swift infers this as Double, unless you specify this cannot become a Float
let myAge3 = 3 + 1.232323 //Swift infers this as Double

//Numeric Literals
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

//Integer
let Int8Example1:Int8 = -120 //An Int8 constant or variable can store numbers between -128 and 127
//let cannotBeNegative: UInt8 = -1 // UInt8 constant or variable can store numbers between 0 and 255 //UInt8 cannot store negative numbers, and so this will report an error
//let tooBig: Int8 = Int8.max + 1 // Int8 cannot store a number larger than its maximum value, and so this will also report an error

//Integer Conversion
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

//Integer and Floating-Point Conversion
let intExample = 5
let doubleExample = 4.323234
let combinedExample1 = Double(intExample) + doubleExample
//let combinedExample2 = intExample + doubleExample //This should show an error as Integer + Double cannot be Inferred
let integerExample = Int(combinedExample1)
let minusThreeValue = -3.0989
let intOfminusThreeValue = Int(minusThreeValue)

//Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min // maxAmplitudeFound is now 0

//Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false
var applesAreTasty = true
var rocksAreTasty = false

if orangesAreOrange {
    print("Yes Oranges are Oranges")
}
//or The below also works
if orangesAreOrange == true {
print("Yes Oranges are Oranges")
}


//Swift’s type safety prevents non-Boolean values from being substituted for Bool. The following example reports a compile-time error
//---------------------------------------------------
//let i1 = 1
//if i1 {
//    print(i1)
    // this example will not compile, and will report an error
//}
//---------------------------------------------------
//However, the alternative example below is valid:
let i2 = 1
if i2 == 1 {
    print(i2)
    // this example will compile successfully
}

//Tuples - “Tuples are useful for temporary groups of related values”
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print(http404Error)
print(statusCode)
print(statusMessage)

let (justTheCode, _) = http404Error
print(justTheCode)
print(http404Error.0)
print(http404Error.1)

let http405Error = (statusCode: 200, StatusError: "Not Found")
print(http405Error.statusCode)
print(http405Error.StatusError)

//Optionals Concepts 1
let possibleNumber1 = "123"
var convertedNumber1 = Int(possibleNumber1)
// convertedNumber is inferred to be of type "Int?", or "optional Int”
//The value of convertedNumber1 is Integer 123

//Optionals Concepts 2
let possibleNumber2 = "123A"
let convertedNumber2 = Int(possibleNumber2)
//The value of convertedNumber2 is nil

//Optionals Concepts 3
var serverResponseCode1: Int?
var serverResponseCode2: Int? = nil
var surveyAnswer: String?

//Optionals Concepts 4
if convertedNumber1 != nil {
    print("convertedNumber contains \(convertedNumber1) integer value.")
    convertedNumber1 = convertedNumber1! + 1
    //    print("convertedNumber contains \(Int(convertedNumber1)) integer value.") - This shows an error
}
// Prints "convertedNumber contains some integer value.”

//Optionals Concepts 5 - Forced unwrapping (In my opinion this is a bad code)
serverResponseCode1 = 1
var forcedUnwrapped1 = serverResponseCode1!

//serverResponseCode2 = 1
//If the above statement is commented it behaves as below
//Trying to use ! to access a nonexistent optional value triggers a runtime error
//var forcedUnwrapped2 = serverResponseCode2!

//Optionals Concepts 5 - Optional Binding
print(possibleNumber1)
if let actualNumber1 = Int(possibleNumber1) {
    print("The value of actualNumber1 is \(actualNumber1), it got the value from \(possibleNumber1)")
}

print("The value of possibleNumber2 is \(possibleNumber2)")
if let actualNumber2 = Int(possibleNumber2) {
    print("The value of actualNumber1 \(actualNumber2)")
}
//In this case, the print statement inside if statement did not even execute

//Optionals Binding Concepts 1
if let tempConstant = Int(possibleNumber1) {
    print("The value of tempConstant is \(tempConstant) and the value of possibleNumber1 is \(possibleNumber1)")
} else {
    print("\(possibleNumber1) could not be converted to an Integer")
}

//Optionals Binding Concepts 2
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100

//Error Handling
func canThrowError() throws {
    //this function may or may not throw an error
}
