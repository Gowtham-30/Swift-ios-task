print("Enter a number:")
let number = Int(readLine()!)!

// Palindrome check
var temp = abs(number)
let original = temp
var reversed = 0

while temp > 0 {
    reversed = reversed * 10 + temp % 10
    temp /= 10
}

if number >= 0 && original == reversed {
    print("Palindrome number")
} else {
    print("Not a palindrome")
}

// Armstrong check
temp = abs(number)
let digits = String(temp).count
var sum = 0

while temp > 0 {
    let digit = temp % 10
    var power = 1

    for _ in 0..<digits {
        power *= digit
    }

    sum += power
    temp /= 10
}

if number >= 0 && sum == number {
    print("Armstrong number")
} else {
    print("Not an Armstrong number")
}
