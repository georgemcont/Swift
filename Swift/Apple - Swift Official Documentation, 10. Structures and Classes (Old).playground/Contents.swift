//Structures
//---------------------------------------------------------------------
//General Definition
//struct SomeStructure {
//    Structure definition goes here
//}
//
//class SomeClass {
//    Class definition goes here
//}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

someResolution.height
someVideoMode.resolution.height

someVideoMode.resolution.width = 1280

let vga = Resolution(width: 640, height: 480)

vga.height
vga.width

//The following Class does not accept Initializers as like Structures
//class ClassResolution {
//    var width = 0
//    var height = 0
//}
//
//let classVga = ClassResolution(width: 640, height: 480)

let hd = Resolution(width: 1920, height: 1080)
hd.width
hd.height
vga.width
vga.height

var cinema = hd
cinema.width
cinema.height
cinema.width = 2048
cinema.height = 10048
cinema.width
cinema.height
hd.height
hd.width
//---------------------------------------------------------------------
//enum
enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}

var currentDirection = CompassPoint.west
let a:CompassPoint = .north
print(a)
print("The current direction is \(currentDirection)")
let rememberedDirection = currentDirection
print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
currentDirection.turnNorth()
print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
//---------------------------------------------------------------------
//Classes
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.frameRate = 25.0
tenEighty.name = "1080i"

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
alsoTenEighty.frameRate = 40.0 // Again changing it though tenEighty is declared as let

tenEighty.frameRate
alsoTenEighty.frameRate

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance")
}
//---------------------------------------------------------------------
