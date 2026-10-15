enum Weekday: Int {
    case monday = 1
    case tuesday, wednesday, thursday
    case friday, saturday, sunday
}

print("Enter day number (1-7):")
let number = Int(readLine()!)!

if let day = Weekday(rawValue: number) {
    print("Day:", day)
    print("Raw value:", day.rawValue)
} else {
    print("Invalid day")
}
