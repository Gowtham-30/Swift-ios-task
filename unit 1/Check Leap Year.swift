print("Enter a year:")
let year = Int(readLine()!)!

if year % 400 == 0 ||
   (year % 4 == 0 && year % 100 != 0) {
    print("Leap year")
} else {
    print("Not a leap year")
}
