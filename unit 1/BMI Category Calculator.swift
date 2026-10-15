print("Enter weight in kilograms:")
let weight = Double(readLine()!)!

print("Enter height in metres:")
let height = Double(readLine()!)!

if height <= 0 || weight <= 0 {
    print("Invalid input")
} else {
    let bmi = weight / (height * height)
    print("BMI:", bmi)

    switch bmi {
    case ..<18.5:
        print("Underweight")
    case 18.5..<25:
        print("Normal")
    case 25..<30:
        print("Overweight")
    default:
        print("Obese")
    }
}
