struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

print("Enter rectangle width:")
let width = Double(readLine()!)!

print("Enter rectangle height:")
let height = Double(readLine()!)!

let rectangle = Rectangle(width: width, height: height)

print("Area:", rectangle.area)
