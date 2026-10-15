print("Enter a number:")
let number = Int(readLine()!)!

var isPrime = number >= 2

if number >= 2 {
    for i in 2..<number {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
}

if isPrime {
    print("Prime number")
} else {
    print("Not a prime number")
}

print("Prime numbers from 1 to 50:")

for n in 2...50 {
    var prime = true

    for i in 2..<n {
        if n % i == 0 {
            prime = false
            break
        }
    }

    if prime {
        print(n, terminator: " ")
    }
}
print()
