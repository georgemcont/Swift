//Operator - A Symbol like +, -, =  etc
//Mathematical Operators - + , -, *, /, %
//Logical Operators - &&
//Assignment Operator - =
//Range Operators - a…b, a..<b
//
//_*Questions*_
//Give examples for Unary, Binary, Ternary Operators
//    Answer: Unary
//    -a
//    !b
//    c!
//    Binary
//    2 + 3
//    5 - 4
//    Ternary
//    (a ? b : c)
//    Notes: *The values that operators affect are operands. In the expression 1 + 2, the + symbol is a binary operator and its two operands are the values 1 and 2*

//Assignment Operator
let b = 10
var a = 5
a = b //a is now equal to 10

//Assignment Operator - With Tuples
let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2

// This is not valid, because x = y does not return a value.
//if x = y {
//
//}
//Instead the following is valid
if x == y {
    print("x is equal to y")
}

//Arithmetic Operators
//Swift supports the four standard arithmetic operators for all number types:
//
//Addition (+)
//Subtraction (-)
//Multiplication (*)
//Division (/)

1 + 2
5 - 3
6 * 8
10.0 / 2.5

let xString = "First, "
let yString = "Second"
let zString = xString + yString

//Remainder Operator
//The remainder operator (a % b) works out how many multiples of b will fit inside a and returns the value that is left over (known as the remainder).
//The remainder operator (%) is also known as a modulo operator in other languages. However, its behavior in Swift for negative numbers means that, strictly speaking, it’s a remainder rather than a modulo operation.
9 % 4
-9 % 4

//Unary Minus Operator
//The sign of a numeric value can be toggled using a prefixed -, known as the unary minus operator
//The unary minus operator (-) is prepended directly before the value it operates on, without any white space
let three = 3
let minusThree = -three
let plusThree = -minusThree

//Unary Plus Operator
let minusSix = -6
let alsoMinusSix = +minusSix
//The above does not change anything

//Compound Assignment Operators
var aCompound1 = 1
aCompound1 += 1 //The expression a += 2 is shorthand for a = a + 2
//Another Example
var aCompound2 = 2
aCompound2 += 3

//Comparison Operators
//==
//!==
//!=
//a > b
//a < b
//a >= b
//a <= b

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let iname = "Apple"
if iname == "world" {
    print("Hello, World!")
} else {
    print("Clean, World")
}

(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog”

("blue", -1) < ("purple", 1)        // OK, evaluates to true

//("blue", false) < ("purple", true)  // Error because < can't compare Boolean values”

//Ternary Conditional Operator
//It should work like this
//if question {
//    answer1
//} else {
//    answer2
//}
let stemHeight = 50
let topBranchHeight = 10
let topBranchExist = true
var heightOfTree = stemHeight + (topBranchExist ? topBranchHeight : 0)
//The above is exactly equivalent to below
if topBranchExist {
    heightOfTree = stemHeight + topBranchHeight
} else {
    heightOfTree = stemHeight + 0
}
