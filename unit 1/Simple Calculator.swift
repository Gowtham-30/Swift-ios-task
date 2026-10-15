print("Enter first number:")
let a = Double(readLine()!)!

print("Enter operator (+, -, *, /):")
let op = readLine()!

print("Enter second number:")
let b = Double(readLine()!)!

switch op {
case "+":
    print("Result:", a + b)
case "-":
    print("Result:", a - b)
case "*":
    print("Result:", a * b)
case "/":
    if b != 0 {
        print("Result:", a / b)
    } else {
        print("Cannot divide by zero")
    }
default:
    print("Invalid operator")
}
