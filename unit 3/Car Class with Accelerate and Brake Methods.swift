class Car {
    var brand: String
    var speed: Int

    init(brand: String, speed: Int) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate() {
        speed += 20
        print("Speed after acceleration:", speed)
    }

    func brake() {
        speed = max(0, speed - 10)
        print("Speed after braking:", speed)
    }
}

print("Enter car brand:")
let brand = readLine()!

print("Enter initial speed:")
let speed = Int(readLine()!)!

let car = Car(brand: brand, speed: speed)

car.accelerate()
car.brake()
