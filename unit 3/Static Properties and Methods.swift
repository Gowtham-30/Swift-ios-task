struct MathHelper {
    static func square(_ number: Int) -> Int {
        return number * number
    }
}

class Counter {
    static var count = 0

    init() {
        Counter.count += 1
    }
}

print("Enter a number:")
let number = Int(readLine()!)!

print("Square:", MathHelper.square(number))

print("Enter number of Counter objects:")
let n = Int(readLine()!)!

if n > 0 {
    for _ in 1...n {
        _ = Counter()
    }
}

print("Objects created:", Counter.count)
