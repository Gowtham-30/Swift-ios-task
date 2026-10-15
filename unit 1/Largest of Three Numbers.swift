print("Enter three numbers:")
let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

if a > b {
    if a > c {
        print("Largest:", a)
    } else {
        print("Largest:", c)
    }
} else {
    if b > c {
        print("Largest:", b)
    } else {
        print("Largest:", c)
    }
}
