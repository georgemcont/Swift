//Function with a parameter
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

greet(person: "George")
print(greet(person: "Clarence"))

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

greetAgain(person: "George")
//---------------------------------------------------------------------
//Functions without Parameters
func sayHelloWorld() -> String {
    return "Hello, World"
}

print(sayHelloWorld())
//---------------------------------------------------------------------
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}

print(greet(person: "George", alreadyGreeted: true))
//---------------------------------------------------------------------
func greetNoReturn(person: String) {
    print("Hello, \(person)!")
}

greetNoReturn(person: "Dave")
//---------------------------------------------------------------------
//Functions Without Return Values
func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
//---------------------------------------------------------------------
//Functions with Multiple Return Values (Tuple Types)
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

print(minMax(array: [2,5,1,5,6,3,2,4,5,4,-4,100,7]))

let bounds = minMax(array: [3,4,7,123,45,-89,0,98])
print(bounds.min)
print(bounds.max)

//---------------------------------------------------------------------
//Functions with Multiple Return Values (Tuple Types) and With Optionals
func minMaxOptional(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    } else {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
    }
}

let counds = minMaxOptional(array: [8, -6, 2, 109, 3, 71])
print(counds?.min)
print(counds?.max)

let dounds = minMaxOptional(array: [])
print(dounds?.min)
print(dounds?.max)

//Another Example
func minMaxAnother(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let eounds = minMaxAnother(array: [4,5,8,9,23,11,-9,899])
//---------------------------------------------------------------------
//Function Argument Labels and Parameter Names
func someFunction(firstParameterName: Int, secondParameterName: Int) {
    print(firstParameterName, secondParameterName)
}
someFunction(firstParameterName: 1, secondParameterName: 2)
//------
func someFunction(argumentLabel parameterName: Int) {
    
}
//------
func greetwithMeaning(person: String, from homeTown: String) -> String {
    return "Hello \(person)! Glas you could visit from \(homeTown)."
}

print(greetwithMeaning(person:"Bill", from: "Cupertino"))
//------
func someFunctionUnderScore(_ firstParameterName: Int, secondParameterName: Int) {
    print(firstParameterName, secondParameterName)
}

print(someFunctionUnderScore(1, secondParameterName: 2))
//---------------------------------------------------------------------
//Default Parameter Values
func someFunction(parameterWitoutDefault: Int, parameterwithDefault: Int = 12) {
    print(parameterWitoutDefault, parameterwithDefault)
}

print(someFunction(parameterWitoutDefault: 1, parameterwithDefault: 2))

print(someFunction(parameterWitoutDefault: 3))
//------
func someFunction(pWD: Int = 100, pWOD: Int) {
    print(pWD, pWOD)
}

someFunction(pWOD: 20)
//---------------------------------------------------------------------
//Variadic Parameters
//The following is based on the array count
//var a = [1,2,3]
//a.count
//The answer is 3

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1,2,3,4,5)
arithmeticMean(3,4,5,555,655,444.4)
arithmeticMean(1) //This also works
//---------------------------------------------------------------------
//In-Out Parameters
//Below is a simple example which show a parameter passed is a let constant which cannot be changed inside a function
//func simpleExampleForAFunction(tyu: Int) {
//    tyu = 4
//    print(tyu)
//}

//simpleExampleForAFunction(tyu: 12)
//This shows an error as below
//error: 3. Temp.playground:2:9: error: cannot assign to value: 'tyu' is a 'let' constant tyu = 4
func swapTwoInts(_ a: inout Int,_ b: inout Int) {
    let temperoraryA = a
    a = b
    b = temperoraryA
}

var someInt = 3
var anotherInt = 107

swapTwoInts(&someInt, &anotherInt)

print(someInt, anotherInt)
//---------------------------------------------------------------------
//Function Types
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = addTwoInts

print(mathFunction(2,3))

mathFunction = multiplyTwoInts(_:_:) //or mathFunction = multiplyTwoInts - Both works
print(mathFunction(2,3))

let anotherMathFunction = addTwoInts
// anotherMathFunction is inferred to be of type (Int, Int) -> Int
//---------------------------------------------------------------------
//Function Types as Parameter Types
func printMathResult(_ mathFunction: (Int, Int) -> Int,_ a:Int,_ b: Int) {
    print(mathFunction(a,b))
}

printMathResult(addTwoInts(_:_:), 3, 5) //or printMathResult(addTwoInts, 3, 5)
//---------------------------------------------------------------------
//Function Types as Return Types
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}
//------
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward: stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to Zero:")

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero")
//---------------------------------------------------------------------
//Nested Functions
//In general functions inside function
//---------------------------------------------------------------------
//---------------------------------------------------------------------
//---------------------------------------------------------------------
//---------------------------------------------------------------------
