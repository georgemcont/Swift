    import Foundation

    enum CarType {
        case Sedan
        case Coupe
        case Hatchback
    }

    class Car {
        var color: String = "Black"
        var numberOfSeats: Int = 5
        var typeOfCar: CarType = .Coupe
        
    //    init(customerChosenColor: String) {
    //        colour = customerChosenColor
    //    }

        init() {
            
        }
        
        convenience init(customerChosenColor: String) {
            self.init()
            color = customerChosenColor 
        }
        
        func drive() {
            print("Car is Moving")
        }
        
    }
