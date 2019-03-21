import Foundation

////For Inheritence
//class SelfDrivingCar: Car {
////    var color: String = "Black"
////    var numberOfSeats: Int = 4
////    var typeOfCar = "Sedan"
//    var destination: String = "to Cupertino, CA"
//
//    Without Override keyword the below function will throw an error
//        func drive() {

    //    }

//    override func drive() {
//        super.drive()
//        print("Driving " + destination)
//    }
//
////    init() {
////
////    }
//}

//For Optionals
//class SelfDrivingCar: Car {
//    //    var color: String = "Black"
//    //    var numberOfSeats: Int = 4
//    //    var typeOfCar = "Sedan"
//    var destination: String?
//
//    override func drive() {
//        super.drive()
//        if destination != nil {
//            print("Driving " + destination!)
//        }
//
//    }
//}

//For Optionals - Additional Conditions
class SelfDrivingCar: Car {
    //    var color: String = "Black"
    //    var numberOfSeats: Int = 4
    //    var typeOfCar = "Sedan"
    var destination: String?
    
    override func drive() {
        super.drive()
        if let userSetDestination = destination {
            print("Driving " + userSetDestination)
        }
        
    }
}

