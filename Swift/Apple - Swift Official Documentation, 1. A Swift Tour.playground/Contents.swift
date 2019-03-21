//: Playground - noun: a place where people can play

//Print Statement
print("Hello, World!")

//Variables
var myVariable = 50
myVariable = 100
let myConstant = 20
//myConstant = 30 - This should show an error

let implicitInteger = 20
let implicitDouble = 70.0
let explicitDouble: Double = 80.0
let explicitFloat: Float //Atleast once a value has to be assigned to this variable within the program. As of now this variable has no value

//Values are never implicitly converted to another type - This is an important point
let label = "The width"
let width = 94
//let widthoftheLabel1 = label + "is" + width //This should show an error
let widthoftheLabel2 = label + " is " + String(width)

//Use \() to include values in between a string
//Another way of assigning values
let apples = 3
let oranges = 5
let basket = ("The basket contains \(apples + oranges) fruits")
let name = ("The first employee in this company is \("George")")
print(basket)

//Use three double quotation marks(""") for strings that take up multiple lines
print("""
    I said "I have \(apples) apples."
    And then I said "I have \(apples + oranges) pieces of fruit"
    """)
let quotation1 = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit"
"""
//The following gives an error
//let quotation2 = """ "I have \(apples) apples" """
print(quotation1)
//The Constant quotation is of type String now

//Arrays and Dictionaries
//Arrays
var arrayExample = ["A","B","C","D","E",]
print(arrayExample)
arrayExample[0] = "Alphabet" //This replaces the value of 0
print(arrayExample)

//Dictionaries
var dictionaryExample1 = [
    488: "Error 89",
    99 : "Error Ever"
]
var dictionaryExample2 = [
    "Error 89" : 488,
    "Error Ever" : 99
]
var dictionaryExample3 = [
    "Tuples": "Store multiple types",
    "Arrays" : "Store same types",
    "Dictionaries" : "Works like a Dictionary"
]
print(dictionaryExample1)
print(dictionaryExample2)
print(dictionaryExample3)
print(dictionaryExample1[488])
print(dictionaryExample2["Error 89"])
print(dictionaryExample3["Tuples"])
//Adding New Values
dictionaryExample3["Variables"] = "To Store Data"
print(dictionaryExample3)
//Same value can be added, but it gets replaced
dictionaryExample3["Variables"] = "To Store Data"
print(dictionaryExample3)
dictionaryExample3["Variables"] = "Swift To Store Data"
print(dictionaryExample3)
//To create an empty array or dictionary, use the initializer syntax
let emptyArray1 = [String]()
let emptyArray2 = [Int]()
let emptyDictionary1 = [String: Float]()
let emptyDictionary2 = [String: Double]()
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
print(shoppingList)
shoppingList[1] = "bottle of water" //This replaces 1, i.e. the value "water"
print(shoppingList)
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
shoppingList = [] //This is emptying the Array
occupations = [:] //This is emptying the Dictionary
print(shoppingList)
print(occupations)

//For
var nArray = [20,21,34,55,100]
var nAdd = 0
for i in nArray {
    print(i)
}
print(nAdd)

//For and If
let individualScore = [23, 45, 65, 100, 55,] //Comma is optional at the end
var teamScore = 0
for score in individualScore {
    if score > 50 {
        teamScore = teamScore + 2
    } else {
        teamScore = teamScore + 1
    }
}
print(teamScore)

//Optionals
//Optionals Example 1
var optionalString1: String? = "Hello"
print(optionalString1)
print(optionalString1!)
if let op1 = optionalString1 {
    print("\(optionalString1) value is copied to the variable op and the value now is \(op1)")
}
//Optionals Example 2
var optionalString2: String? = nil
print(optionalString2)
//Optionals Example 3 // op3 does not copy the value of optionalString3
var optionalString3: Int?
print("The current value of optionalString3 is \(optionalString3)")
if let op3 = optionalString3 {
    print("The value of optionalString3 is \(optionalString3), and the value of op2 is \(op3)")
}
//Optional - Another way to handle optional value, Strings
//let nickName: String = "A"
//let fullName: String = "George Roy"
//let userName = nickName + fullName
let nickName1: String? = nil
let fullName1: String = "George Roy"
let userName1 = nickName1 ?? fullName1
//Optional - Another way to handle optional value, Integer
let number1: Int? = nil
let number2 = 1
let newNumber1 = number1 ?? number2

//Switch Statements - Example 1
let vegetable1 = "Pepper"
switch vegetable1 {
case "Pepper":
    print("The vegetable is Pepper")
case "Cucumber":
    print("The vegetable is Cucumber")
default:
    print("The default vegetable is \(vegetable1)")
}
//Switch Statements - Example 2
let vegetable2 = "red pepper"
switch vegetable2 {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
 //If this default is removed it shows error
default:
    print("Everything tastes good in soup.")
}
//Switch Statements - Example 3, Example to show how Switch statments break once it finds it match
let vegetable3 = "red pepper"
switch vegetable3 {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
case let y where y.hasPrefix("red"):
    print("Prefix Example: Is it a spicy \(y)?")
default:
    print("Everything tastes good in soup.")
}

//For-In
//Example 2 - for-in to iterate over items in a Array
let aVar = [2, 3, 5, 7, 11, 13, 1, 1, 2, 3, 5, 8, 1, 4, 9, 16, 25]
var bVar = 0
for n in aVar {
    print(n)
    if bVar < n {
        bVar = n
    }
}
print("The largest number in the Array is \(bVar)")
//Example 2 - for-in to iterate over items in a dictionary
let interestingNumbers1 = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest1 = 0
for (kind, numbers) in interestingNumbers1 {
    for number in numbers {
        print(kind, number)
        if number > largest1 {
            largest1 = number
        }
    }
}
print(largest1)
//Example 3 - for-in to iterate over items in a dictionary, Capture the Type also
let interestingNumbers2 = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8,],
    "Square": [1, 4, 9, 16, 25],
]
var largest2 = 0
var typeInteger2 = ""
for (kind, numbers) in interestingNumbers2 {
    for number in numbers {
        //        print(kind, number)
        if number > largest2 {
            largest2 = number
            typeInteger2 = kind
        }
    }
}
print(typeInteger2, ",", largest2)

//While Loop
//While Loop Example 1
var pn1 = 2
while pn1 < 20 {
    print(pn1)
    pn1 = pn1 + 2
}
print("pn1 is \(pn1)")
//While Loop Example 2
var pn2 = 2
while pn2 < 100 {
    print(pn2)
    pn2 *= 2
}
print("pn2 is \(pn2)")
//Repeat-While Loop Example 3
var pm = 2
repeat {
    print(pm)
    pm *= 2
} while pm < 100
print("pm is \(pm)")

//For Loop with Index in the loop (..) - Example 1
var total = 0
for i in 0..<4 {
    print(i)
    total += i
}
print("total is \(total)")
//For Loop with Index in the loop (..) - Example 2
var pTotal = 0
for pi in 1...5 {
    print(pi)
    pTotal += pi
}
print("pTotal is \(pTotal)")

//Functions and Closures
//Function 1: First way of declaring the arguments
func greet(person: String, day: String, menu: String) -> String {
    return "Hello \(person), today is \(day), the menu is \(menu)"
}
greet(person: "George", day: "Monday", menu: "Halwa") //First way of inputing arguments

//Function with the same name and different arugments can be declared within the same program
//But if we repeat the same with same arguments, then it shows an error
//The below function (Which is a repeat of the above) throws an error
//func greet(person: String, day: String, menu: String) -> String {
//    return "Hello \(person), today is \(day), the menu is \(menu)"
//}
//greet(person: "George", day: "Monday", menu: "Halwa") //First way of inputing arguments

//Second way of declaring the arguments
//func greet(_ person: String, on day: String) -> String {
//    return "Hello \(person), today is \(day)."
//}
//greet("John", on: "Wednesday") //Second way of inputing arguments

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("George", on: "Wednesday") //Second way of inputing arguments

//Function 2: Again calling the first function on the top with three arguments
greet(person: "George", day: "Monday", menu: "Halwa")

//Function 3: Using Tuples
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return(min, max, sum)
}

let statistics = calculateStatistics(scores: [1, 5, 6, 10])
print(statistics)
print(statistics.min)
print(statistics.max)
print(statistics.sum)
print(statistics.0, statistics.1, statistics.2)

//Function 4: Nested Functions
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//Function 5: Function returning another function as its value
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
