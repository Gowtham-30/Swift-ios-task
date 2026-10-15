print("Enter number of rows:")
let n = Int(readLine()!)!

if n > 0 {
    for i in 1...n {
        for _ in 1...i {
            print("*", terminator: " ")
        }
        print()
    }
}
