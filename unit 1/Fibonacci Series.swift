print("Enter number of terms:")
let n = Int(readLine()!)!

var first = 0
var second = 1

if n > 0 {
    for _ in 1...n {
        print(first, terminator: " ")
        let next = first + second
        first = second
        second = next
    }
}
print()
