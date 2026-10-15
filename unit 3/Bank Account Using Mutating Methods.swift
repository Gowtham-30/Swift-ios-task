struct BankAccount {
    var balance: Double

    mutating func deposit(_ amount: Double) {
        if amount > 0 {
            balance += amount
            print("Deposit successful")
        } else {
            print("Invalid amount")
        }
    }

    mutating func withdraw(_ amount: Double) {
        if amount > 0 && amount <= balance {
            balance -= amount
            print("Withdrawal successful")
        } else {
            print("Insufficient balance or invalid amount")
        }
    }
}

print("Enter initial balance:")
var account = BankAccount(balance: Double(readLine()!)!)

print("Enter deposit amount:")
account.deposit(Double(readLine()!)!)

print("Enter withdrawal amount:")
account.withdraw(Double(readLine()!)!)

print("Final balance:", account.balance)
