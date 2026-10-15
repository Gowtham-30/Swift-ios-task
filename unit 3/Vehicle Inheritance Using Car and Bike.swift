class Vehicle {
    var brand: String

    init(brand: String) {
        self.brand = brand
    }

    func description() {
        print("Vehicle brand:", brand)
    }
}

class Car: Vehicle {
    override func description() {
        print("Car brand:", brand)
    }
}

class Bike: Vehicle {
    override func description() {
        print("Bike brand:", brand)
    }
}

print("Enter car brand:")
let carBrand = readLine()!

print("Enter bike brand:")
let bikeBrand = readLine()!

let vehicles: [Vehicle] = [
    Car(brand: carBrand),
    Bike(brand: bikeBrand)
]

for vehicle in vehicles {
    vehicle.description()
}
