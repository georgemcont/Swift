//Structures
//---------------------------------------------------------------------
//General Definition
struct SomeStruct {
    
}

class SomeClass{
    
}
//---------------------------------------------------------------------
//Example 1
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

var someResolution = Resolution()
let someVideoMode = VideoMode()

someResolution.height
someResolution.width
someVideoMode.resolution.width
someVideoMode.resolution.height

someResolution.height = 1280
someVideoMode.resolution.height = 1280
someResolution.height

//---------------------------------------------------------------------
//Classes

//---------------------------------------------------------------------
